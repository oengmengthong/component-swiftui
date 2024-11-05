//
//  ListComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ListComponent: Component = Component(
    title: "List",
    codeSnippet: """
    List(1..<11) { index in
        Text("List Item \\(index)")
    }
    .padding()
    """,
    view: AnyView(
        List(1..<11) { index in
            Text("List Item \(index)")
        }
        .padding()
    )
)
