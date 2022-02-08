//
//  ForgotPasswordView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email: String = ""
    @State private var oldPassword: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
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
                Text("Old password")
                SecureField(
                    "Old password",
                    text: $oldPassword
                )
                .disableAutocorrection(true)
                
            }
            .padding([.bottom],18)
            
            VStack(alignment:.leading) {
                Text("New password")
                SecureField(
                    "New password",
                    text: $newPassword
                )
                .disableAutocorrection(true)
                
            }
            .padding([.bottom],18)
            
            VStack(alignment:.leading) {
                Text("Confirm password")
                SecureField(
                    "Confirm password",
                    text: $oldPassword
                )
                .disableAutocorrection(true)
                
            }
            .padding([.bottom],25)
            
            Button("Submit") {
                print("forgot password api call")
            }
            .buttonStyle(.bordered)
                .padding([.top],10)
                .foregroundColor(.black)
                
        }
        .textFieldStyle(.roundedBorder)
    .padding()
    .navigationTitle("Forgot password")
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
