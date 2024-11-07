//
//  AlignmentGuideComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let AlignmentGuideComponent: Component = Component(
    title: "AlignmentGuide",
    codeSnippet: """
    HStack(alignment: .bottom) {
        Text("First")
            .alignmentGuide(.bottom) { d in d[.bottom] - 10 }
        
        Text("Second")
            .background(Color.red.opacity(0.3))
        
        Text("Third")
            .alignmentGuide(.bottom) { d in d[.bottom] + 20 }
    }
    .padding()
    .background(Color.gray.opacity(0.2))
    """,
    view: AnyView(
        ScrollView{
            HStack(alignment: .bottom) {
                Text("First")
                    .alignmentGuide(.bottom) { d in d[.bottom] - 10 }
                
                Text("Second")
                    .background(Color.red.opacity(0.3))
                
                Text("Third")
                    .alignmentGuide(.bottom) { d in d[.bottom] + 20 }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
        }
    )
)
