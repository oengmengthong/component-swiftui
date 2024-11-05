//
//  FormComponent.swift
//  ComponentSwiftUI
//
//  Created by Mengthong JakSmok on 5/11/24.
//
import SwiftUI

let FormComponent: Component = Component(
    title: "Form",
    codeSnippet: """
    Form {
        Section(header: Text("Personal Details")) {
            TextField("First Name", text: .constant(""))
            TextField("Last Name", text: .constant(""))
        }

        Section(header: Text("Preferences")) {
            Toggle("Subscribe to Newsletter", isOn: .constant(true))
        }
    }
    """,
    view: AnyView(
        Form {
            Section(header: Text("Personal Details")) {
                TextField("First Name", text: .constant(""))
                TextField("Last Name", text: .constant(""))
            }

            Section(header: Text("Preferences")) {
                Toggle("Subscribe to Newsletter", isOn: .constant(true))
            }
        }
    )
)
