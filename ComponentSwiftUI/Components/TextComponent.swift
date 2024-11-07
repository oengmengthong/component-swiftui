import SwiftUI


let TextComponent: Component = Component(
    title: "Text",
    codeSnippet: """
        VStack(alignment: .leading, spacing: 10) {
            // Large Title Text
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()

            // Italic Text
            Text("Italic Text")
                .italic()
                .font(.title2)

            // Underlined and Strikethrough Text
            Text("Underlined and Strikethrough")
                .underline()
                .strikethrough(true, color: .red)
                .font(.headline)

            // Custom Font with Background
            Text("Custom Font and Background")
                .font(.custom("Helvetica Neue", size: 20))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)

            // Kerning and Baseline Offset
            Text("Kerning and Baseline Offset")
                .kerning(5)
                .baselineOffset(10)
                .font(.body)

            // Shadowed Text
            Text("Shadowed Text")
                .font(.title)
                .shadow(color: .gray, radius: 2, x: 2, y: 2)

            // Multicolored Text with Gradient Background
            Text("Multicolored Text")
                .foregroundColor(.blue)
                .font(.title)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )

            // Text with Gradient Fill
            Text("Gradient Filled Text")
                .font(.largeTitle)
                .foregroundColor(.clear)
                .overlay(
                    LinearGradient(
                        gradient: Gradient(colors: [.purple, .blue, .pink]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(Text("Gradient Filled Text").font(.largeTitle).bold())
                )

            // Text with Multiple Shadows
            Text("Text with Multiple Shadows")
                .font(.title)
                .foregroundColor(.green)
                .shadow(color: .blue, radius: 1, x: -2, y: -2)
                .shadow(color: .purple, radius: 1, x: 2, y: 2)
                .shadow(color: .gray, radius: 3, x: 0, y: 4)

            // Outlined Text (Text Outline Effect)
            Text("Outlined Text")
                .font(.title)
                .foregroundColor(.clear)
                .overlay(
                    Text("Outlined Text")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                )
                .overlay(
                    Text("Outlined Text")
                        .font(.title)
                        .bold()
                        .foregroundColor(.blue)
                        .offset(x: -1, y: -1) // Offset slightly for an outlined effect
                )

            // Embossed Text Effect
            Text("Embossed Text Effect")
                .font(.title)
                .foregroundColor(.gray)
                .shadow(color: .white, radius: 1, x: -1, y: -1)
                .shadow(color: .black.opacity(0.3), radius: 1, x: 1, y: 1)

            // 3D Rotated Text
            Text("3D Rotated Text")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .rotation3DEffect(
                    .degrees(20),
                    axis: (x: 1, y: 1, z: 0)
                )

            // Text with Background Blur
            Text("Text with Background Blur")
                .font(.title)
                .padding()
                .background(BlurView(style: .systemMaterial))
                .cornerRadius(8)
        }
        .padding()
    """,
    view: AnyView(
        TextComponentView()
    )
)

// View to showcase multiple text styles
struct TextComponentView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10) {
                // Large Title Text
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                
                // Italic Text
                Text("Italic Text")
                    .italic()
                    .font(.title2)
                
                // Underlined and Strikethrough Text
                Text("Underlined and Strikethrough")
                    .underline()
                    .strikethrough(true, color: .red)
                    .font(.headline)
                
                // Custom Font with Background
                Text("Custom Font and Background")
                    .font(.custom("Helvetica Neue", size: 20))
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                
                // Kerning and Baseline Offset
                Text("Kerning and Baseline Offset")
                    .kerning(5)
                    .baselineOffset(10)
                    .font(.body)
                
                // Shadowed Text
                Text("Shadowed Text")
                    .font(.title)
                    .shadow(color: .gray, radius: 2, x: 2, y: 2)
                
                // Multicolored Text with Gradient Background
                Text("Multicolored Text")
                    .foregroundColor(.blue)
                    .font(.title)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                
                // Text with Gradient Fill
                Text("Gradient Filled Text")
                    .font(.largeTitle)
                    .foregroundColor(.clear)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.purple, .blue, .pink]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(Text("Gradient Filled Text").font(.largeTitle).bold())
                    )
                
                // Text with Multiple Shadows
                Text("Text with Multiple Shadows")
                    .font(.title)
                    .foregroundColor(.green)
                    .shadow(color: .blue, radius: 1, x: -2, y: -2)
                    .shadow(color: .purple, radius: 1, x: 2, y: 2)
                    .shadow(color: .gray, radius: 3, x: 0, y: 4)
                
                // Outlined Text (Text Outline Effect)
                Text("Outlined Text")
                    .font(.title)
                    .foregroundColor(.clear)
                    .overlay(
                        Text("Outlined Text")
                            .font(.title)
                            .bold()
                            .foregroundColor(.red)
                    )
                    .overlay(
                        Text("Outlined Text")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                            .offset(x: -1, y: -1) // Offset slightly for an outlined effect
                    )
                
                // Embossed Text Effect
                Text("Embossed Text Effect")
                    .font(.title)
                    .foregroundColor(.gray)
                    .shadow(color: .white, radius: 1, x: -1, y: -1)
                    .shadow(color: .black.opacity(0.3), radius: 1, x: 1, y: 1)
                
                // 3D Rotated Text
                Text("3D Rotated Text")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                    .rotation3DEffect(
                        .degrees(20),
                        axis: (x: 1, y: 1, z: 0)
                    )
                
#if os(iOS)
                // Text with Background Blur
                Text("Text with Background Blur")
                    .font(.title)
                    .padding()
                    .background(BlurView(style: .systemMaterial))
                    .cornerRadius(8)
#endif
            }
            .padding()
        }
    }
}
