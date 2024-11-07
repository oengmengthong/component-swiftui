import SwiftUI

let ButtonComponent: Component = Component(
    title: "Button",
    codeSnippet: """
    VStack(spacing: 20) {
        // Plain Button
        Button("Plain Button") {}

        // Filled Button with Background Color
        Button("Filled Button") {}
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

        // Outlined Button with Border
        Button("Outlined Button") {}
            .padding()
            .background(Color.clear)
            .foregroundColor(.blue)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue, lineWidth: 2)
            )

        // Rounded Button with Shadow
        Button("Rounded Button") {}
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(25)
            .shadow(color: .gray, radius: 5, x: 2, y: 2)

        // Gradient Button
        Button("Gradient Button") {}
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
            )
            .foregroundColor(.white)
            .cornerRadius(8)

        // Button with Icon
        Button(action: {}) {
            HStack {
                Image(systemName: "star.fill")
                Text("Button with Icon")
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
        }

        // Capsule Button with Gradient Border
        Button("Capsule Button") {}
            .padding()
            .background(Color.clear)
            .foregroundColor(.purple)
            .overlay(
                Capsule()
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .leading, endPoint: .trailing),
                        lineWidth: 2
                    )
            )
            .padding(.horizontal)

        // Icon-only Button with Shadow
        Button(action: {}) {
            Image(systemName: "heart.fill")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
        }

        // Button with Bottom Shadow Effect
        Button("Bottom Shadow Button") {}
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)

        // Button with Inset Shadow for Pressed Effect
        Button("Inset Shadow Button") {}
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
            .shadow(color: .white.opacity(0.7), radius: 4, x: -2, y: -2)
    }
    .padding()
    """,
    view: AnyView(
        ButtonComponentView()
    )
)

// View to showcase multiple button styles
struct ButtonComponentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Plain Button
            Button("Plain Button") {}

            // Filled Button with Background Color
            Button("Filled Button") {}
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)

            // Outlined Button with Border
            Button("Outlined Button") {}
                .padding()
                .background(Color.clear)
                .foregroundColor(.blue)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 2)
                )

            // Rounded Button with Shadow
            Button("Rounded Button") {}
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)

            // Gradient Button
            Button("Gradient Button") {}
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                )
                .foregroundColor(.white)
                .cornerRadius(8)

            // Button with Icon
            Button(action: {}) {
                HStack {
                    Image(systemName: "star.fill")
                    Text("Button with Icon")
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
            }

            // Capsule Button with Gradient Border
            Button("Capsule Button") {}
                .padding()
                .background(Color.clear)
                .foregroundColor(.purple)
                .overlay(
                    Capsule()
                        .stroke(
                            LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .leading, endPoint: .trailing),
                            lineWidth: 2
                        )
                )
                .padding(.horizontal)

            // Icon-only Button with Shadow
            Button(action: {}) {
                Image(systemName: "heart.fill")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 5, x: 2, y: 2)
            }

            // Button with Bottom Shadow Effect
            Button("Bottom Shadow Button") {}
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)

            // Button with Inset Shadow for Pressed Effect
            Button("Inset Shadow Button") {}
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
                .shadow(color: .white.opacity(0.7), radius: 4, x: -2, y: -2)
        }
        .padding()
    }
}
