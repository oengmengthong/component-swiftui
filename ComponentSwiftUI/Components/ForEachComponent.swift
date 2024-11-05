//
//  ForEachComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ForEachComponent: Component = Component(
    title: "ForEach",
    codeSnippet: """
    VStack {
        ForEach(1..<6) { index in
            Text("Item \\(index)")
                .padding()
                .background(Color.blue.opacity(0.3))
                .cornerRadius(10)
        }
    }
    .padding()
    """,
    view: AnyView(
        VStack {
            ForEach(1..<6) { index in
                Text("Item \(index)")
                    .padding()
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(10)
            }
        }
        .padding()
    )
)
