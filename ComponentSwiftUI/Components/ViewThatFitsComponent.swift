//
//  ViewThatFitsComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ViewThatFitsComponent: Component = Component(
    title: "ViewThatFits",
    codeSnippet: """
    ViewThatFits {
        Text("Short View")
            .frame(maxWidth: 100)
            .background(Color.blue.opacity(0.3))

        Text("Longer View That Will Be Used If Space Allows")
            .frame(maxWidth: .infinity)
            .background(Color.red.opacity(0.3))
    }
    .padding()
    """,
    view: AnyView(
        ViewThatFits {
            Text("Short View")
                .frame(maxWidth: 100)
                .background(Color.blue.opacity(0.3))

            Text("Longer View That Will Be Used If Space Allows")
                .frame(maxWidth: .infinity)
                .background(Color.red.opacity(0.3))
        }
        .padding()
    )
)
