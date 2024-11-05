//
//  TabViewComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let TabViewComponent: Component = Component(
    title: "TabView",
    codeSnippet: """
    TabView {
        Text("Home")
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }

        Text("Settings")
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
    }
    """,
    view: AnyView(
        TabView {
            Text("Home")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    )
)
