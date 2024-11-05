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
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        content
                            .frame(maxWidth: .infinity)
                            .padding()
                            .border(Color.gray, width: 1)
                            .cornerRadius(8)
                    }
                    .padding()
                }
                .tabItem {
                    Image(systemName: "eye")
                    Text("UI Preview")
                }
                .tag(0)

                // Code Tab
                ScrollView(.horizontal) {
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Text("Code")
                                .font(.title2)
                                .padding(.bottom, 10)
                            Spacer()
                            Button(action: {
                                copyCodeToClipboard()
                            }) {
                                Image(systemName: "doc.on.doc")
                                    .font(.title3)
                                    .foregroundColor(.blue)
                                Text("Copy")
                                    .foregroundColor(.blue)
                            }
                        }
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
