//
//  ShapeComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ShapeComponent: Component = Component(
    title: "Shapes",
    codeSnippet: """
    VStack(spacing: 20) {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)

        RoundedRectangle(cornerRadius: 20)
            .fill(Color.green)
            .frame(width: 100, height: 100)

        Circle()
            .fill(Color.red)
            .frame(width: 100, height: 100)

        Ellipse()
            .fill(Color.orange)
            .frame(width: 150, height: 100)

        Capsule()
            .fill(Color.purple)
            .frame(width: 150, height: 60)

        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 100, y: 0))
            path.addLine(to: CGPoint(x: 50, y: 100))
            path.closeSubpath()
        }
        .stroke(Color.black, lineWidth: 2)
        .frame(width: 100, height: 100)
    }
    .padding()
    """,
    view: AnyView(
        VStack(spacing: 20) {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .frame(width: 100, height: 100)

            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)

            Ellipse()
                .fill(Color.orange)
                .frame(width: 150, height: 100)

            Capsule()
                .fill(Color.purple)
                .frame(width: 150, height: 60)

            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 100, y: 0))
                path.addLine(to: CGPoint(x: 50, y: 100))
                path.closeSubpath()
            }
            .stroke(Color.black, lineWidth: 2)
            .frame(width: 100, height: 100)
        }
        .padding()
    )
)
