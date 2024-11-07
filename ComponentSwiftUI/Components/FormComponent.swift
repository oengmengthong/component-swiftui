import SwiftUI

let FormComponent: Component = Component(
    title: "Form",
    codeSnippet: """
    Form {
        Section(header: Text("Personal Details")) {
            TextField("First Name", text: .constant(""))
            TextField("Last Name", text: .constant(""))
            DatePicker("Date of Birth", selection: .constant(Date()), displayedComponents: .date)
        }

        Section(header: Text("Contact Info")) {
            HStack {
                Image(systemName: "envelope.fill").foregroundColor(.blue)
                TextField("Email", text: .constant(""))
            }
            HStack {
                Image(systemName: "phone.fill").foregroundColor(.green)
                TextField("Phone Number", text: .constant(""))
            }
        }

        Section(header: Text("Preferences")) {
            Toggle("Subscribe to Newsletter", isOn: .constant(true))
            Picker("Preferred Language", selection: .constant("English")) {
                Text("English").tag("English")
                Text("French").tag("French")
                Text("Spanish").tag("Spanish")
            }
        }
    }
    .formStyle(GroupedFormStyle())
    .padding()
    """,
    view: AnyView(
        FullStyledFormComponentView()
    )
)

struct FullStyledFormComponentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var dateOfBirth: Date = Date()
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var subscribeNewsletter: Bool = true
    @State private var preferredLanguage: String = "English"

    var body: some View {
        Form {
            // Personal Details Section
            Section(header: Text("Personal Details").font(.headline)) {
                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
                    .datePickerStyle(CompactDatePickerStyle())
            }
            
            // Contact Info Section
            Section(header: Text("Contact Info").font(.headline)) {
                HStack {
                    Image(systemName: "envelope.fill").foregroundColor(.blue)
                    TextField("Email", text: $email)
                        #if os(iOS)
                        .keyboardType(.emailAddress)
                        #endif
                }
                HStack {
                    Image(systemName: "phone.fill").foregroundColor(.green)
                    TextField("Phone Number", text: $phoneNumber)
                        #if os(iOS)
                        .keyboardType(.phonePad)
                        #endif
                }
            }
            
            // Preferences Section
            Section(header: Text("Preferences").font(.headline)) {
                Toggle("Subscribe to Newsletter", isOn: $subscribeNewsletter)
                Picker("Preferred Language", selection: $preferredLanguage) {
                    Text("English").tag("English")
                    Text("French").tag("French")
                    Text("Spanish").tag("Spanish")
                }
            }
        }
        .formStyle(GroupedFormStyle())
        .padding()
    }
}
