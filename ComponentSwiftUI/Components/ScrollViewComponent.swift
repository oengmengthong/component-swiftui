//
//  ScrollViewComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ScrollViewComponent: Component = Component(
    title: "ScrollView",
    codeSnippet: """
    ScrollView {
        VStack(spacing: 20) {
            ForEach(1..<21) { index in
                Text("Item \\(index)")
                    .frame(maxWidth: .infinity)
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
            VStack(spacing: 20) {
                ForEach(1..<21) { index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                }
            }
            .padding()
        }
    )
)
