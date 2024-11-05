//
//  TextComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let TextComponent: Component = Component(
    title: "Text",
    codeSnippet: """
    VStack(alignment: .leading, spacing: 10) {
        Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .bold()

        Text("Italic Text")
            .italic()
            .font(.title2)

        Text("Underlined and Strikethrough")
            .underline()
            .strikethrough(true, color: .red)
            .font(.headline)

        Text("Custom Font and Background")
            .font(.custom("Helvetica Neue", size: 20))
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)

        Text("Kerning and Baseline Offset")
            .kerning(5)
            .baselineOffset(10)
            .font(.body)

        Text("Shadowed Text")
            .font(.title)
            .shadow(color: .gray, radius: 2, x: 2, y: 2)

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
    }
    .padding()
    """,
    view: AnyView(
        VStack(alignment: .leading, spacing: 10) {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()

            Text("Italic Text")
                .italic()
                .font(.title2)

            Text("Underlined and Strikethrough")
                .underline()
                .strikethrough(true, color: .red)
                .font(.headline)

            Text("Custom Font and Background")
                .font(.custom("Helvetica Neue", size: 20))
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)

            Text("Kerning and Baseline Offset")
                .kerning(5)
                .baselineOffset(10)
                .font(.body)

            Text("Shadowed Text")
                .font(.title)
                .shadow(color: .gray, radius: 2, x: 2, y: 2)

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
        }
        .padding()
    )
)
