//
//  LazyVGridComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let LazyVGridComponent: Component = Component(
    title: "LazyVGrid",
    codeSnippet: """
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    ScrollView {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(1..<21) { index in
                Text("Item \\(index)")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange.opacity(0.3))
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    """,
    view: AnyView(
        {
            let columns = [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
            return ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(1..<21) { index in
                        Text("Item \(index)")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange.opacity(0.3))
                            .cornerRadius(5)
                    }
                }
                .padding()
            }
        }()
    )
)
