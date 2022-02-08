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

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment:.leading) {
                    Text("Email")
                    TextField(
                        "Email address",
                        text: $email
                    )
                    .disableAutocorrection(true)
                }
                .padding([.bottom],18)
                
                
                VStack(alignment:.leading) {
                    Text("Password")
                    SecureField(
                        "Password",
                        text: $password
                    )
                    .disableAutocorrection(true)
                    
                }
                
                HStack {
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot password")
                            .foregroundColor(.blue)
                        .underline()
                    }
                        
                    Spacer()
                    
                    NavigationLink (destination: SignupView()) {
                        Text("Register")
                            .foregroundColor(.blue)
                        .underline()
                    }
                }
                .padding([.top],15)
                
                Button("Login") {
                    print("hello")
                }
                .buttonStyle(.bordered)
                    .padding([.top],10)
                    .foregroundColor(.black)
                    
            }
            .textFieldStyle(.roundedBorder)
        .padding()
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
