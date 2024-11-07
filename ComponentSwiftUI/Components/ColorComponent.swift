//
//  ColorComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ColorComponent: Component = Component(
    title: "Color",
    codeSnippet: """
    VStack(spacing: 20) {
        Color.red
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            .overlay(
                Text("Red")
                    .foregroundColor(.white)
                    .bold()
            )

        Color.green
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            .overlay(
                Text("Green")
                    .foregroundColor(.black)
                    .bold()
            )

        Color.blue
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            .overlay(
                Text("Blue")
                    .foregroundColor(.white)
                    .bold()
            )

        LinearGradient(
            gradient: Gradient(colors: [.red, .orange, .yellow]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .frame(width: 200, height: 100)
        .cornerRadius(10)
        .overlay(
            Text("Gradient")
                .foregroundColor(.white)
                .bold()
        )

        RadialGradient(
            gradient: Gradient(colors: [.purple, .blue]),
            center: .center,
            startRadius: 5,
            endRadius: 60
        )
        .frame(width: 200, height: 100)
        .cornerRadius(10)
        .overlay(
            Text("Radial Gradient")
                .foregroundColor(.white)
                .bold()
        )

        AngularGradient(
            gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
            center: .center
        )
        .frame(width: 200, height: 100)
        .cornerRadius(10)
        .overlay(
            Text("Angular Gradient")
                .foregroundColor(.white)
                .bold()
        )
    }
    .padding()
    """,
    view: AnyView(
        ScrollView{
            VStack(spacing: 20) {
                Color.red
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .overlay(
                        Text("Red")
                            .foregroundColor(.white)
                            .bold()
                    )
                
                Color.green
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .overlay(
                        Text("Green")
                            .foregroundColor(.black)
                            .bold()
                    )
                
                Color.blue
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .overlay(
                        Text("Blue")
                            .foregroundColor(.white)
                            .bold()
                    )
                
                LinearGradient(
                    gradient: Gradient(colors: [.red, .orange, .yellow]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .overlay(
                    Text("Gradient")
                        .foregroundColor(.white)
                        .bold()
                )
                
                RadialGradient(
                    gradient: Gradient(colors: [.purple, .blue]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 60
                )
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .overlay(
                    Text("Radial Gradient")
                        .foregroundColor(.white)
                        .bold()
                )
                
                AngularGradient(
                    gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                    center: .center
                )
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .overlay(
                    Text("Angular Gradient")
                        .foregroundColor(.white)
                        .bold()
                )
            }
            .padding()
        }
    )
)
