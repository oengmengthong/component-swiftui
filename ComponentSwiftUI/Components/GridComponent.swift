//
//  GridComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let GridComponent: Component = Component(
    title: "Grid (iOS 16+)",
    codeSnippet: """
    Grid {
        GridRow {
            Color.red.frame(width: 50, height: 50)
            Color.blue.frame(width: 50, height: 50)
            Color.green.frame(width: 50, height: 50)
        }

        GridRow {
            ForEach(1..<4) { index in
                Text("Cell \\(index)")
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(5)
            }
        }
    }
    .padding()
    """,
    view: AnyView(
        ScrollView{
            Grid {
                GridRow {
                    Color.red.frame(width: 50, height: 50)
                    Color.blue.frame(width: 50, height: 50)
                    Color.green.frame(width: 50, height: 50)
                }
                
                GridRow {
                    ForEach(1..<4) { index in
                        Text("Cell \(index)")
                            .frame(width: 50, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(5)
                    }
                }
            }
            .padding()
        }
    )
)
