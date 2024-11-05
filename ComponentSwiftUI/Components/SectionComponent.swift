//
//  SectionComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let SectionComponent: Component = Component(
    title: "Section",
    codeSnippet: """
    List {
        Section(header: Text("Fruits")) {
            Text("Apple")
            Text("Banana")
            Text("Orange")
        }

        Section(header: Text("Vegetables")) {
            Text("Carrot")
            Text("Broccoli")
            Text("Spinach")
        }
    }
    .padding()
    """,
    view: AnyView(
        List {
            Section(header: Text("Fruits")) {
                Text("Apple")
                Text("Banana")
                Text("Orange")
            }

            Section(header: Text("Vegetables")) {
                Text("Carrot")
                Text("Broccoli")
                Text("Spinach")
            }
        }
        .padding()
    )
)
