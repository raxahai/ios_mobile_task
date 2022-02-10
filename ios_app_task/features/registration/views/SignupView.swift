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
    @State private var password: String = ""
    
    var registrationViewModel: RegisterViewModel = RegisterViewModel(registerService: RegistrationService())
    
    var body: some View {
        VStack {
            Form {
                Group{
                    isRegistered
                }
                
                Section{
                    TextField(
                        "First name",
                        text: $firstName
                    )
                    .disableAutocorrection(true)
                    
                    TextField(
                        "Last name",
                        text: $lastName
                    )
                    .disableAutocorrection(true)
                    
                    TextField(
                        "Email address",
                        text: $email
                    )
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    
                    SecureField(
                        "Password",
                        text: $password
                    )
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                }
                Section{
                    HStack {
                        Spacer()
                        Button("Register") {
                            print("registration initiated")
                            registrationViewModel.register(firstName: firstName, lastName: lastName, email: email, password: password)
                        }
                        Spacer()
                    }
                }
                .disabled(email.count < 11 || firstName.isEmpty || lastName.isEmpty || password.isEmpty)
            }
        }
    .navigationTitle("Registration")
    }
    
    @ViewBuilder
    var isRegistered: some View{
        if registrationViewModel.isRegisterSuccess{
            Text("Register succesful")
        }else{
            Text("Not yet registered")
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
