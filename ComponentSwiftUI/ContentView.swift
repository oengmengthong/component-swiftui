import SwiftUI

struct ContentView: View {
    @State private var expandedSections: Set<String> = []

    var body: some View {
        NavigationView {
            List {
                ForEach(menuItems.keys.sorted(), id: \.self) { section in
                    Section(header: Text(section).font(.headline)) {
                        Button(action: {
                            toggleSection(section)
                        }) {
                            HStack {
                                Text(section)
                                Spacer()
                                Image(systemName: expandedSections.contains(section) ? "chevron.down" : "chevron.right")
                            }
                        }
                        .foregroundColor(.primary)
                        
                        if expandedSections.contains(section) {
                            ForEach(menuItems[section] ?? [], id: \.self) { item in
                                NavigationLink(destination: getDetailView(for: item)) {
                                    Text(item)
                                        .padding(.leading, 20)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("SwiftUI Components")
        }
    }

    private func toggleSection(_ section: String) {
        if expandedSections.contains(section) {
            expandedSections.remove(section)
        } else {
            expandedSections.insert(section)
        }
    }

    @ViewBuilder
    private func getDetailView(for item: String) -> some View {
        if let component = components[item] {
            ComponentDetailView(
                title: component.title,
                code: component.codeSnippet,
                content: component.view
            )
        } else {
            Text("No detail view available")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
