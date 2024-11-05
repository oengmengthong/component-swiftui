//
//  NavigationStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let NavigationStackComponent: Component = Component(
    title: "NavigationStack (iOS 16+)",
    codeSnippet: """
    NavigationStack {
        List(1..<6) { index in
            NavigationLink("Navigate to Detail \\(index)", destination: Text("Detail View \\(index)"))
        }
        .navigationTitle("NavigationStack")
    }
    """,
    view: AnyView(
        NavigationStack {
            List(1..<6) { index in
                NavigationLink("Navigate to Detail \(index)", destination: Text("Detail View \(index)"))
            }
            .navigationTitle("NavigationStack")
        }
    )
)
