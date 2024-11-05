//
//  SpacerComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let SpacerComponent: Component = Component(
    title: "Spacer",
    codeSnippet: """
    VStack {
        Text("Top Text")
            .background(Color.yellow)

        Spacer()

        Text("Bottom Text")
            .background(Color.green)
    }
    .frame(height: 300)
    .padding()
    """,
    view: AnyView(
        VStack {
            Text("Top Text")
                .background(Color.yellow)

            Spacer()

            Text("Bottom Text")
                .background(Color.green)
        }
        .frame(height: 300)
        .padding()
    )
)
