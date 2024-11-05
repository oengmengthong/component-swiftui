//
//  LazyHGridComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let LazyHGridComponent: Component = Component(
    title: "LazyHGrid",
    codeSnippet: """
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    ScrollView(.horizontal) {
        LazyHGrid(rows: rows, spacing: 10) {
            ForEach(1..<21) { index in
                Text("Item \\(index)")
                    .frame(maxHeight: .infinity)
                    .padding()
                    .background(Color.purple.opacity(0.3))
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    """,
    view: AnyView(
        {
            let rows = [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
            return ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(1..<21) { index in
                        Text("Item \(index)")
                            .frame(maxHeight: .infinity)
                            .padding()
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(5)
                    }
                }
                .padding()
            }
        }()
    )
)
