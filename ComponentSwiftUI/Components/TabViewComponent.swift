import SwiftUI

let TabViewComponent: Component = Component(
    title: "TabView",
    codeSnippet: """
        TabView {
            // Home Tab with Gradient Background
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .padding()
                Text("Welcome to the Home Tab")
                    .font(.title2)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }

            // Profile Tab with Image and Badge
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.orange)
                Text("Profile")
                    .font(.title2)
                    .foregroundColor(.orange)
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }

            // Search Tab with Badge and Background
            VStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 80))
                    .foregroundColor(.green)
                Text("Search")
                    .font(.title2)
                    .foregroundColor(.green)
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .badge("3")

            // Notifications Tab with Custom Badge
            VStack {
                Image(systemName: "bell.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                Text("You have notifications!")
                    .font(.title2)
                    .foregroundColor(.red)
            }
            .tabItem {
                Image(systemName: "bell.fill")
                Text("Notifications")
            }
            .badge(7)

            // Settings Tab with Card Background
            VStack {
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
                Text("Adjust your preferences")
                    .font(.title2)
                    .foregroundColor(.gray)
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }
        .accentColor(.blue)
        .background(
            LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.1), .purple.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    """,
    view: AnyView(
        TabViewComponentView()
    )
)

struct TabViewComponentView: View {
    var body: some View {
        ScrollView{
            TabView {
                // Home Tab with Gradient Background
                VStack {
                    Image(systemName: "house.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(20)
                        .padding()
                    Text("Welcome to the Home Tab")
                        .font(.title2)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                // Profile Tab with Image and Badge
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.orange)
                    Text("Profile")
                        .font(.title2)
                        .foregroundColor(.orange)
                }
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                
                // Search Tab with Badge and Background
                VStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 80))
                        .foregroundColor(.green)
                    Text("Search")
                        .font(.title2)
                        .foregroundColor(.green)
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .badge("3")
                
                // Notifications Tab with Custom Badge
                VStack {
                    Image(systemName: "bell.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    Text("You have notifications!")
                        .font(.title2)
                        .foregroundColor(.red)
                }
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
                .badge(7)
                
                // Settings Tab with Card Background
                VStack {
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.gray)
                    Text("Adjust your preferences")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
            }
            .accentColor(.blue)
            .background(
                LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.1), .purple.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
        }
    }
}
