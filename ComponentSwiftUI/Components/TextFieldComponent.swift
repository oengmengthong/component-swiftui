import SwiftUI

let TextFieldComponent: Component = Component(
    title: "TextField",
    codeSnippet: """
    ScrollView{
        VStack(spacing: 20) {
            // Plain TextField
           TextField("Plain TextField", text: $text)
               .padding()
               .background(Color.gray.opacity(0.1))
               .cornerRadius(8)

           // Outlined TextField
           TextField("Outlined TextField", text: $text)
               .padding()
               .overlay(
                   RoundedRectangle(cornerRadius: 8)
                       .stroke(Color.blue, lineWidth: 1)
               )

           // TextField with shadow
           TextField("TextField with Shadow", text: $text)
               .padding()
               .background(Color.white)
               .cornerRadius(8)
               .shadow(color: .gray, radius: 5, x: 2, y: 2)

           // TextField with Icon
           HStack {
               Image(systemName: "magnifyingglass")
                   .foregroundColor(.gray)
               TextField("TextField with Icon", text: $text)
                   .padding(.leading, 10)
           }
           .padding()
           .background(Color.gray.opacity(0.1))
           .cornerRadius(8)

           // Gradient Background TextField
           TextField("Gradient TextField", text: $text)
               .padding()
               .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing))
               .cornerRadius(8)
               .foregroundColor(.white)

           // Capsule TextField
           TextField("Capsule TextField", text: $text)
               .padding()
               .background(Color.blue.opacity(0.1))
               .clipShape(Capsule())

           // TextField with Background Blur (for more depth)
           TextField("Background Blur TextField", text: $text)
               .padding()
               .background(BlurView(style: .systemMaterial))
               .cornerRadius(8)

           // TextField with Gradient Border
           TextField("Gradient Border TextField", text: $text)
               .padding()
               .background(Color.white)
               .overlay(
                   RoundedRectangle(cornerRadius: 8)
                       .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
               )
               .shadow(color: .gray.opacity(0.4), radius: 5, x: 1, y: 1)

           // Multiline TextField with fixed height
           TextField("Multiline TextField", text: $text)
               .padding()
               .background(Color.gray.opacity(0.1))
               .cornerRadius(8)
               .frame(height: 100)
               .multilineTextAlignment(.leading)
       }
       .padding()
    }
    """,
    view: AnyView(
        TextFieldComponentView()
    )
)

struct TextFieldComponentView: View {
    @State private var text: String = ""

    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                // Plain TextField
               TextField("Plain TextField", text: $text)
                   .padding()
                   .background(Color.gray.opacity(0.1))
                   .cornerRadius(8)

               // Outlined TextField
               TextField("Outlined TextField", text: $text)
                   .padding()
                   .overlay(
                       RoundedRectangle(cornerRadius: 8)
                           .stroke(Color.blue, lineWidth: 1)
                   )

               // TextField with shadow
               TextField("TextField with Shadow", text: $text)
                   .padding()
                   .background(Color.white)
                   .cornerRadius(8)
                   .shadow(color: .gray, radius: 5, x: 2, y: 2)

               // TextField with Icon
               HStack {
                   Image(systemName: "magnifyingglass")
                       .foregroundColor(.gray)
                   TextField("TextField with Icon", text: $text)
                       .padding(.leading, 10)
               }
               .padding()
               .background(Color.gray.opacity(0.1))
               .cornerRadius(8)

               // Gradient Background TextField
               TextField("Gradient TextField", text: $text)
                   .padding()
                   .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing))
                   .cornerRadius(8)
                   .foregroundColor(.white)

               // Capsule TextField
               TextField("Capsule TextField", text: $text)
                   .padding()
                   .background(Color.blue.opacity(0.1))
                   .clipShape(Capsule())
#if os(iOS)
               // TextField with Background Blur (for more depth)
               TextField("Background Blur TextField", text: $text)
                   .padding()
                   .background(BlurView(style: .systemMaterial))
                   .cornerRadius(8)
#endif

               // TextField with Gradient Border
               TextField("Gradient Border TextField", text: $text)
                   .padding()
                   .background(Color.white)
                   .overlay(
                       RoundedRectangle(cornerRadius: 8)
                           .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                   )
                   .shadow(color: .gray.opacity(0.4), radius: 5, x: 1, y: 1)

               // Multiline TextField with fixed height
               TextField("Multiline TextField", text: $text)
                   .padding()
                   .background(Color.gray.opacity(0.1))
                   .cornerRadius(8)
                   .frame(height: 100)
                   .multilineTextAlignment(.leading)
           }
           .padding()
        }
    }
}

// Placeholder Modifier for TextField (since SwiftUI doesn't support it directly)
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
#if os(iOS)
// Helper view for background blur (for more advanced visual effects)
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
#endif
