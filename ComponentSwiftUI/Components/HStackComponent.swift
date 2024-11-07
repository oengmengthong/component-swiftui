//
//  HStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let HStackComponent: Component = Component(
    title: "HStack",
    codeSnippet: """
    HStack(alignment: .center, spacing: 20) {
        Text("Left")
            .padding()
            .background(Color.red)
            .cornerRadius(10)

        Text("Center")
            .padding()
            .background(Color.orange)
            .cornerRadius(10)

        Text("Right")
            .padding()
            .background(Color.purple)
            .cornerRadius(10)
    }
    .padding()
    """,
    view: AnyView(
        ScrollView{
            HStack(alignment: .center, spacing: 20) {
                Text("Left")
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                
                Text("Center")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                
                Text("Right")
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding()
        }
    )
)
