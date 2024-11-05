//
//  GeometryReaderComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let GeometryReaderComponent: Component = Component(
    title: "GeometryReader",
    codeSnippet: """
    GeometryReader { geometry in
        VStack {
            Text("Width: \\(geometry.size.width, specifier: "%.2f")")
            Text("Height: \\(geometry.size.height, specifier: "%.2f")")
        }
        .frame(width: geometry.size.width, height: geometry.size.height)
        .background(Color.orange.opacity(0.5))
    }
    .frame(height: 150)
    .padding()
    """,
    view: AnyView(
        GeometryReader { geometry in
            VStack {
                Text("Width: \(geometry.size.width, specifier: "%.2f")")
                Text("Height: \(geometry.size.height, specifier: "%.2f")")
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.orange.opacity(0.5))
        }
        .frame(height: 150)
        .padding()
    )
)
