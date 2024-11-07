import SwiftUI

// Custom Checkbox Toggle Style for iOS
struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .onTapGesture {
                    configuration.isOn.toggle() // Toggle the state
                }
            configuration.label
        }
    }
}

// Toggle Component
let ToggleComponent: Component = Component(
    title: "Toggle",
    codeSnippet: """
        VStack(spacing: 20) {
            // Default Toggle
            Toggle("Default Toggle", isOn: $isDefaultOn)

            // Styled Toggle with Green Switch Style
            Toggle("Styled Toggle", isOn: $isStyledOn)
                .toggleStyle(SwitchToggleStyle(tint: .green))

            // Checkbox Toggle
            Toggle("Checkbox Toggle", isOn: $isCheckboxOn)
                .toggleStyle(CheckboxToggleStyle())

            // Gradient Background Toggle
            Toggle("Gradient Toggle", isOn: $isGradientOn)
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(8)
                .toggleStyle(SwitchToggleStyle(tint: .white))
                .foregroundColor(.white)

            // Toggle with Icon Labels
            HStack {
                Image(systemName: isIconOn ? "lock.fill" : "lock.open.fill")
                    .foregroundColor(isIconOn ? .red : .green)
                Toggle("Lock Toggle", isOn: $isIconOn)
                    .labelsHidden()
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)

            // Capsule Toggle with Custom Colors
            Toggle("Capsule Toggle", isOn: $isCapsuleOn)
                .toggleStyle(SwitchToggleStyle(tint: isCapsuleOn ? .blue : .gray))
                .padding()
                .background(isCapsuleOn ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                .clipShape(Capsule())
                .padding(.horizontal)

            // Toggle with Shadow and Outline
            Toggle("Outlined Toggle", isOn: $isGradientOn)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                )
                .shadow(color: .gray.opacity(0.4), radius: 5, x: 1, y: 1)
                .toggleStyle(SwitchToggleStyle(tint: .orange))
        }
        .padding()
    """,
    view: AnyView(
        ToggleComponentView()
    )
)

// Toggle Component View with multiple toggle styles
struct ToggleComponentView: View {
    @State private var isDefaultOn = true
    @State private var isStyledOn = false
    @State private var isCheckboxOn = false
    @State private var isGradientOn = false
    @State private var isIconOn = false
    @State private var isCapsuleOn = true

    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                // Default Toggle
                Toggle("Default Toggle", isOn: $isDefaultOn)
                
                // Styled Toggle with Green Switch Style
                Toggle("Styled Toggle", isOn: $isStyledOn)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                
                // Checkbox Toggle
                Toggle("Checkbox Toggle", isOn: $isCheckboxOn)
                    .toggleStyle(CheckboxToggleStyle())
                
                // Gradient Background Toggle
                Toggle("Gradient Toggle", isOn: $isGradientOn)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(8)
                    .toggleStyle(SwitchToggleStyle(tint: .white))
                    .foregroundColor(.white)
                
                // Toggle with Icon Labels
                HStack {
                    Image(systemName: isIconOn ? "lock.fill" : "lock.open.fill")
                        .foregroundColor(isIconOn ? .red : .green)
                    Toggle("Lock Toggle", isOn: $isIconOn)
                        .labelsHidden()
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
                // Capsule Toggle with Custom Colors
                Toggle("Capsule Toggle", isOn: $isCapsuleOn)
                    .toggleStyle(SwitchToggleStyle(tint: isCapsuleOn ? .blue : .gray))
                    .padding()
                    .background(isCapsuleOn ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                    .clipShape(Capsule())
                    .padding(.horizontal)
                
                // Toggle with Shadow and Outline
                Toggle("Outlined Toggle", isOn: $isGradientOn)
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    )
                    .shadow(color: .gray.opacity(0.4), radius: 5, x: 1, y: 1)
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
            }
            .padding()
        }
    }
}
