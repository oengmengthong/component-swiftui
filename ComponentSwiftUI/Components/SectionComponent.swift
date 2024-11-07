import SwiftUI

let SectionComponent: Component = Component(
    title: "Section",
    codeSnippet: """
    List {
        Section(header: Text("Fruits").font(.subheadline).foregroundColor(.primary)) {
            Text("Apple")
            Text("Banana")
            Text("Orange")
        }

        Section(header: Text("Vegetables").font(.subheadline).foregroundColor(.primary)) {
            Text("Carrot")
            Text("Broccoli")
            Text("Spinach")
        }
        Section(header: Text("Fruits").font(.headline).foregroundColor(.orange)) {
            HStack {
                Image(systemName: "applelogo")
                Text("Apple")
            }
            HStack {
                Image(systemName: "leaf.fill")
                Text("Banana")
            }
            HStack {
                Image(systemName: "sun.max.fill")
                Text("Orange")
            }
        }
        .listRowBackground(Color.orange.opacity(0.1))

        Section(header: Text("Vegetables").font(.headline).foregroundColor(.green), footer: Text("Healthy Choices")) {
            HStack {
                Image(systemName: "carrot.fill")
                Text("Carrot")
            }
            HStack {
                Image(systemName: "leaf.arrow.circlepath")
                Text("Broccoli")
            }
            HStack {
                Image(systemName: "drop.fill")
                Text("Spinach")
            }
        }
        .listRowBackground(Color.green.opacity(0.1))
    }
    .listStyle(InsetGroupedListStyle()) // Only applies on iOS
    .padding()
    """,
    view: AnyView(
        FullStyledSectionComponentView()
    )
)

struct FullStyledSectionComponentView: View {
    var body: some View {
        List {
            Section(header: Text("Fruits").font(.subheadline).foregroundColor(.primary)) {
                Text("Apple")
                Text("Banana")
                Text("Orange")
            }
            
            Section(header: Text("Vegetables").font(.subheadline).foregroundColor(.primary)) {
                Text("Carrot")
                Text("Broccoli")
                Text("Spinach")
            }
            
            // Fruits Section with Icons, Gradient Header, and Background Color
            Section(header: Text("🍎 Fruits")
                .font(.title2).bold()
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(
                    gradient: Gradient(colors: [.orange, .pink]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                    .cornerRadius(8)
            ) {
                HStack {
                    Image(systemName: "applelogo")
                        .foregroundColor(.red)
                    Text("Apple")
                        .font(.headline)
                }
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.green)
                    Text("Banana")
                        .font(.headline)
                }
                HStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    Text("Orange")
                        .font(.headline)
                }
            }
            .listRowBackground(Color.orange.opacity(0.1))
            
            // Vegetables Section with Icons, Custom Header and Footer
            Section(header: Text("🥦 Vegetables")
                .font(.title2).bold()
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(
                    gradient: Gradient(colors: [.green, .blue]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                    .cornerRadius(8),
                    footer: Text("Eat your greens!")
                .font(.footnote)
                .foregroundColor(.secondary)
            ) {
                HStack {
                    Image(systemName: "carrot.fill")
                        .foregroundColor(.orange)
                    Text("Carrot")
                        .font(.headline)
                }
                HStack {
                    Image(systemName: "leaf.arrow.circlepath")
                        .foregroundColor(.green)
                    Text("Broccoli")
                        .font(.headline)
                }
                HStack {
                    Image(systemName: "drop.fill")
                        .foregroundColor(.blue)
                    Text("Spinach")
                        .font(.headline)
                }
            }
            .listRowBackground(Color.green.opacity(0.1))
        }
        .listStyle(platformSpecificListStyle()) // Use platform-specific list style
        .padding()
    }
    
    // Helper function to apply platform-specific list style
    private func platformSpecificListStyle() -> some ListStyle {
        #if os(iOS)
        return InsetGroupedListStyle()
        #else
        return SidebarListStyle()
        #endif
    }
}
