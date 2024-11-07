import SwiftUI

struct SplashScreenView: View {
    // State variables for animation
    @State private var scaleEffect: CGFloat = 0.8
    @State private var opacity: Double = 1.0
    @State private var isActive = false
    @Environment(\.colorScheme) var colorScheme // Detects dark or light mode
    
    var body: some View {
        if isActive {
            ContentView() // Replace with your main app view
        } else {
            VStack {
                Image("logo") // Use your app logo here
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(colorScheme == .dark ? .white : .blue) // Dynamic color
                    .scaleEffect(scaleEffect)
                    .opacity(opacity)
                    .onAppear {
                        // Start the animation
                        withAnimation(.easeInOut(duration: 1.5)) {
                            scaleEffect = 1.1
                            opacity = 0.0
                        }
                        // Transition to ContentView after the animation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isActive = true
                        }
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(colorScheme == .dark ? Color.black : Color.white) // Dynamic background color
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .preferredColorScheme(.light) // Preview in light mode
        SplashScreenView()
            .preferredColorScheme(.dark)  // Preview in dark mode
    }
}
