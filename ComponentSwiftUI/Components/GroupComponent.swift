//
//  GroupComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let GroupComponent: Component = Component(
    title: "Group",
    codeSnippet: """
    Group {
        Text("First View")
            .padding()
            .background(Color.blue.opacity(0.2))

        Text("Second View")
            .padding()
            .background(Color.green.opacity(0.2))

        Text("Third View")
            .padding()
            .background(Color.red.opacity(0.2))
    }
    .padding()
    """,
    view: AnyView(
        ScrollView{
            Group {
                Text("First View")
                    .padding()
                    .background(Color.blue.opacity(0.2))
                
                Text("Second View")
                    .padding()
                    .background(Color.green.opacity(0.2))
                
                Text("Third View")
                    .padding()
                    .background(Color.red.opacity(0.2))
            }
            .padding()
        }
    )
)
