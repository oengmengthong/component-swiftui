import SwiftUI

struct ComponentDetailView: View {
    var title: String
    var code: String
    var content: AnyView
    @State private var selectedTab = 0
    @State private var showCopyAlert = false

    var body: some View {
        VStack {
            // Custom segmented control at the top
            Picker("", selection: $selectedTab) {
                Text("UI Preview").tag(0)
                Text("Code").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 16)

            // Content based on selected tab
            if selectedTab == 0 {
                VStack {
                    content
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .cornerRadius(8)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
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
            }
        }
        .navigationTitle(title)
#if os(iOS)
        .navigationBarItems(trailing: Button(action: {
            copyCodeToClipboard()
        }) {
            Image(systemName: "doc.on.doc")
                .font(.title3)
                .foregroundColor(.blue)
        })
        #endif
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
