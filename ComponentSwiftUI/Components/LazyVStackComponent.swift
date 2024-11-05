//
//  LazyVStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let LazyVStackComponent: Component = Component(
    title: "LazyVStack",
    codeSnippet: """
    ScrollView {
        LazyVStack(alignment: .leading, spacing: 10) {
            ForEach(1..<50) { index in
                Text("Item \\(index)")
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    """,
    view: AnyView(
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 10) {
                ForEach(1..<50) { index in
                    Text("Item \(index)")
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                }
            }
            .padding()
        }
    )
)
