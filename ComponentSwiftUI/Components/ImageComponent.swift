//
//  ImageComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let ImageComponent: Component = Component(
    title: "Image",
    codeSnippet: """
    VStack(alignment: .center, spacing: 20) {
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.yellow)

        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
            .foregroundColor(.red)

        Image(systemName: "circle")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
            .foregroundColor(.blue)

        Image("exampleImage") // Replace with an image from your assets
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 100)
            .clipped()
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 2, y: 2)

        Image("exampleImage") // Replace with an image from your assets
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150)
            .border(Color.gray, width: 1)
            .padding()

        Image("exampleImage") // Replace with an image from your assets
            .resizable()
            .scaledToFit()
            .overlay(
                Text("Overlay Text")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(4)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(5),
                alignment: .bottomTrailing
            )
    }
    .padding()
    """,
    view: AnyView(
        VStack(alignment: .center, spacing: 20) {
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)

            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)

            Image(systemName: "circle")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .foregroundColor(.blue)

            Image("exampleImage") // Replace with an image from your assets
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 100)
                .clipped()
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)

            Image("exampleImage") // Replace with an image from your assets
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .border(Color.gray, width: 1)
                .padding()

            Image("exampleImage") // Replace with an image from your assets
                .resizable()
                .scaledToFit()
                .overlay(
                    Text("Overlay Text")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(4)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(5),
                    alignment: .bottomTrailing
                )
        }
        .padding()
    )
)
