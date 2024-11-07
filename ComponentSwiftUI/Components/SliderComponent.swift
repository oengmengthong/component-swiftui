import SwiftUI

let SliderComponent: Component = Component(
    title: "Slider",
    codeSnippet: """
    VStack(spacing: 30) {
        // Default Slider with Label
        VStack {
            Slider(value: $value1, in: 0...100)
            Text("Default Slider: \\(value1, specifier: "%.0f")")
                .font(.caption)
        }

        // Customized Slider with Gradient Track
        VStack {
            Slider(value: $value2, in: 0...100)
                .accentColor(.clear)
                .overlay(
                    LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                        .mask(Slider(value: $value2, in: 0...100))
                )
            Text("Gradient Slider: \\(value2, specifier: "%.0f")")
                .font(.caption)
                .foregroundColor(.blue)
        }

        // Slider with Icon and Progress Percentage
        VStack {
            HStack {
                Image(systemName: "speaker.wave.1.fill")
                    .foregroundColor(.gray)
                Slider(value: $value3, in: 0...100, step: 10)
                    .accentColor(.red)
                Image(systemName: "speaker.wave.3.fill")
                    .foregroundColor(.gray)
            }
            Text("Volume: \\(value3, specifier: "%.0f")%")
                .font(.caption)
        }

        // Slider with Capsule Track
        VStack {
            Slider(value: $value4, in: 0...100)
                .accentColor(.green)
                .padding()
                .background(Color.green.opacity(0.1))
                .cornerRadius(20)
            Text("Capsule Slider: \\(value4, specifier: "%.0f")")
                .font(.caption)
                .foregroundColor(.green)
        }

        // Slider with Dotted Progress Indicator
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 8)
                HStack(spacing: 4) {
                    ForEach(0..<Int(value5 / 10), id: \\.self) { _ in
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.leading, 4)
            }
            Slider(value: $value5, in: 0...100, step: 10)
                .accentColor(.orange)
            Text("Dotted Progress: \\(value5, specifier: "%.0f")")
                .font(.caption)
                .foregroundColor(.orange)
        }

        // Filled Background Slider
        VStack {
            Slider(value: $value6, in: 0...100)
                .accentColor(.clear)
                .background(
                    GeometryReader { geo in
                        ZStack(alignment: .leading) {
                            Capsule()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: geo.size.width, height: 10)
                            Capsule()
                                .fill(Color.blue)
                                .frame(width: CGFloat(value6 / 100) * geo.size.width, height: 10)
                        }
                    }
                )
            Text("Filled Background: \\(value6, specifier: "%.0f")")
                .font(.caption)
                .foregroundColor(.blue)
        }

        // Slider with Dynamic Background Color
        VStack {
            Slider(value: $value7, in: 0...100)
                .accentColor(Color(hue: value7 / 100, saturation: 1.0, brightness: 1.0))
            Text("Dynamic Color Slider: \\(value7, specifier: "%.0f")")
                .font(.caption)
                .foregroundColor(Color(hue: value7 / 100, saturation: 1.0, brightness: 1.0))
        }
    }
    .padding()
    """,
    view: AnyView(
        SliderComponentView()
    )
)

// View to manage @State properties for the sliders
struct SliderComponentView: View {
    @State private var value1: Double = 50
    @State private var value2: Double = 30
    @State private var value3: Double = 70
    @State private var value4: Double = 40
    @State private var value5: Double = 20
    @State private var value6: Double = 60
    @State private var value7: Double = 50

    var body: some View {
        ScrollView{
            VStack(spacing: 30) {
                // Default Slider with Label
                VStack {
                    Slider(value: $value1, in: 0...100)
                    Text("Default Slider: \(value1, specifier: "%.0f")")
                        .font(.caption)
                }
                
                // Customized Slider with Gradient Track
                VStack {
                    Slider(value: $value2, in: 0...100)
                        .accentColor(.clear)
                        .overlay(
                            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                                .mask(Slider(value: $value2, in: 0...100))
                        )
                    Text("Gradient Slider: \(value2, specifier: "%.0f")")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                
                // Slider with Icon and Progress Percentage
                VStack {
                    HStack {
                        Image(systemName: "speaker.wave.1.fill")
                            .foregroundColor(.gray)
                        Slider(value: $value3, in: 0...100, step: 10)
                            .accentColor(.red)
                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundColor(.gray)
                    }
                    Text("Volume: \(value3, specifier: "%.0f")%")
                        .font(.caption)
                }
                
                // Slider with Capsule Track
                VStack {
                    Slider(value: $value4, in: 0...100)
                        .accentColor(.green)
                        .padding()
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(20)
                    Text("Capsule Slider: \(value4, specifier: "%.0f")")
                        .font(.caption)
                        .foregroundColor(.green)
                }
                
                // Slider with Dotted Progress Indicator
                VStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 8)
                        HStack(spacing: 4) {
                            ForEach(0..<Int(value5 / 10), id: \.self) { _ in
                                Circle()
                                    .fill(Color.orange)
                                    .frame(width: 8, height: 8)
                            }
                        }
                        .padding(.leading, 4)
                    }
                    Slider(value: $value5, in: 0...100, step: 10)
                        .accentColor(.orange)
                    Text("Dotted Progress: \(value5, specifier: "%.0f")")
                        .font(.caption)
                        .foregroundColor(.orange)
                }
                
                // Filled Background Slider
                VStack {
                    Slider(value: $value6, in: 0...100)
                        .accentColor(.clear)
                        .background(
                            GeometryReader { geo in
                                ZStack(alignment: .leading) {
                                    Capsule()
                                        .fill(Color.gray.opacity(0.2))
                                        .frame(width: geo.size.width, height: 10)
                                    Capsule()
                                        .fill(Color.blue)
                                        .frame(width: CGFloat(value6 / 100) * geo.size.width, height: 10)
                                }
                            }
                        )
                    Text("Filled Background: \(value6, specifier: "%.0f")")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                
                // Slider with Dynamic Background Color
                VStack {
                    Slider(value: $value7, in: 0...100)
                        .accentColor(Color(hue: value7 / 100, saturation: 1.0, brightness: 1.0))
                    Text("Dynamic Color Slider: \(value7, specifier: "%.0f")")
                        .font(.caption)
                        .foregroundColor(Color(hue: value7 / 100, saturation: 1.0, brightness: 1.0))
                }
            }
            .padding()
        }
    }
}
