import SwiftUI

enum AppTheme: String, CaseIterable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
}

class SettingsViewModel: ObservableObject {
    @Published var selectedTheme: AppTheme = .system
}

import SwiftUI

struct ContentView: View {
    @State private var expandedSections: Set<String> = []
    @State private var searchText: String = ""
    @State private var selectedTab: Tab = .components
    @StateObject private var settings = SettingsViewModel()

    enum Tab {
        case components, more
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                VStack {
                    if selectedTab == .components {
                        SearchBar(text: $searchText)
                            .padding(.horizontal)
                    }
                    
                    List {
                        ForEach(filteredSections(), id: \.self) { section in
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
                                        if searchText.isEmpty || item.localizedCaseInsensitiveContains(searchText) {
                                            NavigationLink(destination: getDetailView(for: item)) {
                                                Text(item)
                                                    .padding(.leading, 20)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                    .navigationTitle("SwiftUI Components")
                    .onAppear {
                        expandAllSections() // Expand all sections on view load
                    }
                }
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Components")
            }
            .tag(Tab.components)
            
            NavigationView {
                List {
                    NavigationLink(destination: AboutUsView()) {
                        Label("About Us", systemImage: "info.circle")
                    }
                    NavigationLink(destination: ContactUsView()) {
                        Label("Contact Us", systemImage: "phone.circle")
                    }
                    NavigationLink(destination: GitHubRepoView()) {
                        Label("GitHub Repo", systemImage: "chevron.left.slash.chevron.right")
                    }
                    Button(action: shareApp) {
                        Label("Share App", systemImage: "square.and.arrow.up")
                    }
                    NavigationLink(destination: SettingsView(settings: settings)) {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                }
                .navigationTitle("More")
            }
            .tabItem {
                Image(systemName: "ellipsis.circle")
                Text("More")
            }
            .tag(Tab.more)
        }
        .applyTheme(settings.selectedTheme)
    }
    
    private func expandAllSections() {
          expandedSections = Set(menuItems.keys)
      }
    
    private func toggleSection(_ section: String) {
            if expandedSections.contains(section) {
                expandedSections.remove(section)
            } else {
                expandedSections.insert(section)
            }
        }

    private func filteredSections() -> [String] {
            // Show all sections if searchText is empty
            guard !searchText.isEmpty else {
                return menuItems.keys.sorted()
            }
            
            // Otherwise, filter sections based on searchText
            return menuItems.keys.filter { section in
                section.localizedCaseInsensitiveContains(searchText) ||
                (menuItems[section]?.contains { $0.localizedCaseInsensitiveContains(searchText) } ?? false)
            }
            .sorted()
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

    private func shareApp() {
        guard let url = URL(string: "https://apps.apple.com/app/6737881194") else { return }
        let activityController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        // Find the first active window scene
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            rootViewController.present(activityController, animated: true, completion: nil)
        }
    }
}

extension View {
    /// Applies the selected theme to the view.
    func applyTheme(_ theme: AppTheme) -> some View {
        switch theme {
        case .system:
            return AnyView(self) // Do not apply a colorScheme modifier for system theme
        case .light:
            return AnyView(self.environment(\.colorScheme, .light))
        case .dark:
            return AnyView(self.environment(\.colorScheme, .dark))
        }
    }
}

// MARK: - About Us View
struct AboutUsView: View {
    var body: some View {
        Text("About Us Content Here")
            .navigationTitle("About Us")
            .padding()
    }
}

// MARK: - Contact Us View
struct ContactUsView: View {
    var body: some View {
        Text("Contact Us Content Here")
            .navigationTitle("Contact Us")
            .padding()
    }
}

// MARK: - GitHub Repo View
struct GitHubRepoView: View {
    var body: some View {
        VStack {
            Text("Check out the source code on GitHub.")
            Link("GitHub Repository", destination: URL(string: "https://github.com/oengmengthong/component-swiftui")!)
                .foregroundColor(.blue)
                .padding()
        }
        .navigationTitle("GitHub Repo")
    }
}

// MARK: - Settings View
struct SettingsView: View {
    @ObservedObject var settings: SettingsViewModel

    var body: some View {
        Form {
            Section(header: Text("Appearance")) {
                Picker("Theme", selection: $settings.selectedTheme) {
                    ForEach(AppTheme.allCases, id: \.self) { theme in
                        Text(theme.rawValue).tag(theme)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
        .navigationTitle("Settings")
    }
}

// MARK: - SearchBar View
struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search Components", text: $text)
                .padding(8)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)

                        if !text.isEmpty {
                            Button(action: { text = "" }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
        }
        .padding(.vertical, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SettingsViewModel())
    }
}
