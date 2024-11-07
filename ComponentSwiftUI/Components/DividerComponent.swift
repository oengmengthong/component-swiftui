//
//  DividerComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let DividerComponent: Component = Component(
    title: "Divider",
    codeSnippet: """
    VStack(spacing: 20) {
        Text("Above the Divider")
            .font(.title)

        Divider()

        Text("Below the Divider")
            .font(.title)
    }
    .padding()
    """,
    view: AnyView(
        ScrollView{
            VStack(spacing: 20) {
                Text("Above the Divider")
                    .font(.title)
                
                Divider()
                
                Text("Below the Divider")
                    .font(.title)
            }
            .padding()
        }
    )
)
