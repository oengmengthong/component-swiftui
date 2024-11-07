import SwiftUI

struct ComponentDetailView: View {
    var title: String
    var code: String
    var content: AnyView
    @State private var selectedTab = 0
    @State private var showCopyAlert = false

    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                // UI Preview Tab
                VStack {
                    content
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .cornerRadius(8)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tabItem {
                    Image(systemName: "eye")
                    Text("UI Preview")
                }
                .tag(0)

                // Code Tab
                VStack(alignment: .leading, spacing: 20) {
                    ScrollView(.vertical) {
                        Text(code)
                            .font(.system(.body, design: .monospaced))
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                    }
                    .padding()
                }
                .tabItem {
                    Image(systemName: "chevron.left.slash.chevron.right")
                    Text("Code")
                }
                .tag(1)
            }
        }
        .navigationTitle(title)
        .navigationBarItems(trailing: Button(action: {
            copyCodeToClipboard()
        }) {
            Image(systemName: "doc.on.doc")
                .font(.title3)
                .foregroundColor(.blue)
        })
        .alert(isPresented: $showCopyAlert) {
            Alert(
                title: Text("Copied"),
                message: Text("Code copied to clipboard"),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    private func copyCodeToClipboard() {
        #if os(iOS)
        UIPasteboard.general.string = code
        #elseif os(macOS)
        NSPasteboard.general.declareTypes([.string], owner: nil)
        NSPasteboard.general.setString(code, forType: .string)
        #endif
        showCopyAlert = true
    }
}

struct ComponentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentDetailView(
            title: "Text",
            code: """
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
            """,
            content: AnyView(
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            )
        )
    }
}

// A UIViewRepresentable to display large amounts of code using UITextView for better scrollability
struct CodeTextView: UIViewRepresentable {
    let code: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        textView.isScrollEnabled = true
        textView.backgroundColor = .clear
        textView.textColor = UIColor.label
        textView.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .regular)
        textView.text = code
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = code
    }
}
