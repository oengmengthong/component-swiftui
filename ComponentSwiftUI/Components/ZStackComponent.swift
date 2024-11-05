//
//  ZStackComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ZStackComponent: Component = Component(
    title: "ZStack",
    codeSnippet: """
    ZStack {
        Color.blue
            .frame(width: 150, height: 150)
            .cornerRadius(10)

        Text("Overlay Text")
            .foregroundColor(.white)
            .font(.title)
            .bold()
    }
    .padding()
    """,
    view: AnyView(
        ZStack {
            Color.blue
                .frame(width: 150, height: 150)
                .cornerRadius(10)

            Text("Overlay Text")
                .foregroundColor(.white)
                .font(.title)
                .bold()
        }
        .padding()
    )
)
