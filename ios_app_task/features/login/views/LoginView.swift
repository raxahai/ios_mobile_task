//
//  login_screen.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI


struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var loginViewModel: LoginViewModel = LoginViewModel(loginService: LoginService())

    var body: some View {
        NavigationView {
            Form {
                Section{
                    TextField(
                        "Email address",
                        text: $email
                    )
                    .disableAutocorrection(true)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    
                    SecureField(
                        "Password",
                        text: $password
                    )
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                        
                }
                
                Section {
                    Button("Login") {
                        print("hello")
                        loginViewModel.getData(email: email, password: password)
                    }
                }
                .disabled(email.count < 5 || password.count < 5)
                
                Group {
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot password")
                    }
                    
                    NavigationLink (destination: SignupView()) {
                        Text("Register")
                    }
                }
            }
        .navigationTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
.previewInterfaceOrientation(.portrait)
    }
}
