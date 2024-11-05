//
//  FrameComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let FrameComponent: Component = Component(
    title: "Frame",
    codeSnippet: """
    VStack {
        Text("Framed Text")
            .frame(width: 150, height: 50)
            .background(Color.blue.opacity(0.3))
            .cornerRadius(5)

        Text("Expanded Frame")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green.opacity(0.3))
            .cornerRadius(5)
    }
    .frame(height: 200)
    .padding()
    """,
    view: AnyView(
        VStack {
            Text("Framed Text")
                .frame(width: 150, height: 50)
                .background(Color.blue.opacity(0.3))
                .cornerRadius(5)

            Text("Expanded Frame")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green.opacity(0.3))
                .cornerRadius(5)
        }
        .frame(height: 200)
        .padding()
    )
)
