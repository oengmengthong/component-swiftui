//
//  LazyHStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let LazyHStackComponent: Component = Component(
    title: "LazyHStack",
    codeSnippet: """
    ScrollView(.horizontal) {
        LazyHStack(spacing: 10) {
            ForEach(1..<20) { index in
                Text("Item \\(index)")
                    .padding()
                    .background(Color.green.opacity(0.3))
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    """,
    view: AnyView(
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(1..<20) { index in
                    Text("Item \(index)")
                        .padding()
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(5)
                }
            }
            .padding()
        }
    )
)
