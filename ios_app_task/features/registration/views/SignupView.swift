//
//  SignupView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI

struct SignupView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var dateOfBirth: String = ""
    @State private var country: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                VStack (alignment: .leading) {
                    
                    Text("First name")
                    TextField(
                        "First name",
                        text: $firstName
                    )
                    .disableAutocorrection(true)
                    .padding([.bottom],10)
                    
                    Text("Last name")
                    TextField(
                        "Last name",
                        text: $firstName
                    )
                    .disableAutocorrection(true)
                    .padding([.bottom],10)
                    
                    Text("Email")
                    TextField(
                        "Email address",
                        text: $firstName
                    )
                    .disableAutocorrection(true)
                    .padding([.bottom],10)
                    
                    Text("Date of birth")
                    TextField(
                        "Date of birth",
                        text: $dateOfBirth
                    )
                    .disableAutocorrection(true)
                    .padding([.bottom],10)
                    
                    Text("Country")
                    TextField(
                        "Country",
                        text: $country
                    )
                    .disableAutocorrection(true)
                    .padding([.bottom],10)
                }
                .textFieldStyle(.roundedBorder)
            }
            
            Button("Register") {
                print("registration initiated")
            }
            .buttonStyle(.bordered)

            .foregroundColor(.black)
                
        }
        .padding()
        .navigationTitle("Registration")
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}