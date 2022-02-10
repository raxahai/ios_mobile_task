//
//  ForgotPasswordView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email: String = ""
    @State private var verifyAccountEmail: String = ""
    @State private var isShown: Bool = false
    
    var forgotPasswordViewModel: ForgotPasswordViewModel = ForgotPasswordViewModel(forgotPasswordService: ForgotPasswordService())
    var body: some View {
        ZStack (alignment: .top) {
            
            Form {
                Section {
                    TextField(
                        "Email address",
                        text: $email
                    )
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                }
                
                Section {
                    HStack{
                        Spacer()
                        Button("Submit") {
                            print("forgot password api call")
                            self.isShown = forgotPasswordViewModel.forgotPassword(email: email)
                        }
                        .disabled(email.count < 12)
                        Spacer()
                    }
                }
            }
            
            AlertView(title: "Verify account",isShown: $isShown, text: $verifyAccountEmail)
            
            
        .navigationTitle("Forgot password")
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
