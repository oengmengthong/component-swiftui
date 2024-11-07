import SwiftUI

let StepperComponent: Component = Component(
    title: "Stepper",
    codeSnippet: """
    VStack(spacing: 20) {
        // Default Stepper
        Stepper("Default Stepper: \\(value1)", value: $value1, in: 0...10)

        // Customized Stepper with background and shadow
        Stepper("Stepper with Background: \\(value2)", value: $value2, in: 0...10)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .shadow(color: .gray, radius: 2, x: 1, y: 1)

        // Gradient Background Stepper
        Stepper("Gradient Background Stepper: \\(value3)", value: $value3, in: 0...10)
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .foregroundColor(.white)

        // Outlined Stepper with Border
        Stepper("Outlined Stepper: \\(value4)", value: $value4, in: 0...10)
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
            )
            .shadow(color: .gray.opacity(0.3), radius: 4, x: 1, y: 2)

        // Stepper with Icons
        HStack {
            Image(systemName: "minus.circle")
                .foregroundColor(.red)
                .onTapGesture { value5 = max(value5 - 1, 0) } // Decrement manually
            Text("Stepper with Icons: \\(value5)")
                .padding(.horizontal)
            Image(systemName: "plus.circle")
                .foregroundColor(.green)
                .onTapGesture { value5 = min(value5 + 1, 10) } // Increment manually
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)

        // Capsule-Shaped Stepper
        Stepper("Capsule Stepper: \\(value6)", value: $value6, in: 0...10)
            .padding()
            .background(Color.blue.opacity(0.1))
            .clipShape(Capsule())
            .padding(.horizontal)

    }
    .padding()
    """,
    view: AnyView(
        StepperComponentView()
    )
)

// View to manage @State properties for the steppers
struct StepperComponentView: View {
    @State private var value1: Int = 0
    @State private var value2: Int = 5
    @State private var value3: Int = 2
    @State private var value4: Int = 3
    @State private var value5: Int = 7
    @State private var value6: Int = 4

    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                // Default Stepper
                Stepper("Default Stepper: \(value1)", value: $value1, in: 0...10)
                
                // Customized Stepper with background and shadow
                Stepper("Stepper with Background: \(value2)", value: $value2, in: 0...10)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .shadow(color: .gray, radius: 2, x: 1, y: 1)
                
                // Gradient Background Stepper
                Stepper("Gradient Background Stepper: \(value3)", value: $value3, in: 0...10)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                // Outlined Stepper with Border
                Stepper("Outlined Stepper: \(value4)", value: $value4, in: 0...10)
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    )
                    .shadow(color: .gray.opacity(0.3), radius: 4, x: 1, y: 2)
                
                // Stepper with Icons
                HStack {
                    Image(systemName: "minus.circle")
                        .foregroundColor(.red)
                        .onTapGesture { value5 = max(value5 - 1, 0) } // Decrement manually
                    Text("Stepper with Icons: \(value5)")
                        .padding(.horizontal)
                    Image(systemName: "plus.circle")
                        .foregroundColor(.green)
                        .onTapGesture { value5 = min(value5 + 1, 10) } // Increment manually
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
                // Capsule-Shaped Stepper
                Stepper("Capsule Stepper: \(value6)", value: $value6, in: 0...10)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .clipShape(Capsule())
                    .padding(.horizontal)
                
            }
            .padding()
        }
    }
}
