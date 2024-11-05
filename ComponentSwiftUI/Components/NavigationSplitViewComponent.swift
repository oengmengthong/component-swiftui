//
//  NavigationSplitViewComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let NavigationSplitViewComponent: Component = Component(
    title: "NavigationSplitView (iOS 16+)",
    codeSnippet: """
    NavigationSplitView {
        List(1..<6) { index in
            NavigationLink("Item \\(index)", destination: Text("Detail View \\(index)"))
        }
    } detail: {
        Text("Select an item to see details")
    }
    """,
    view: AnyView(
        NavigationSplitView {
            List(1..<6) { index in
                NavigationLink("Item \(index)", destination: Text("Detail View \(index)"))
            }
        } detail: {
            Text("Select an item to see details")
        }
    )
)
