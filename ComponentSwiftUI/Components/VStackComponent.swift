//
//  VStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let VStackComponent: Component = Component(
    title: "VStack",
    codeSnippet: """
    VStack(alignment: .leading, spacing: 20) {
        Text("First Item")
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)

        Text("Second Item")
            .padding()
            .background(Color.green)
            .cornerRadius(10)

        Text("Third Item")
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
    }
    .padding()
    """,
    view: AnyView(
        VStack(alignment: .leading, spacing: 20) {
            Text("First Item")
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)

            Text("Second Item")
                .padding()
                .background(Color.green)
                .cornerRadius(10)

            Text("Third Item")
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
        .padding()
    )
)
