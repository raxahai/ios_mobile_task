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
    @State private var text: String = ""
    
    var forgotPasswordViewModel: ForgotPasswordViewModel = ForgotPasswordViewModel(forgotPasswordService: ForgotPasswordService())
    var body: some View {
        ZStack (alignment: .top) {
            VStack(){
                VStack(alignment:.leading) {
                    Text("Email")
                    TextField(
                        "Email address",
                        text: $email
                    )
                    .disableAutocorrection(true)
                }
                Button("Submit") {
                    print("forgot password api call")
                    forgotPasswordViewModel.forgotPassword()
                    self.isShown = true
                }
                .buttonStyle(.bordered)
                    .padding([.top],10)
                    .foregroundColor(.black)
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            
            AlertView(title: "Verify account",isShown: $isShown, text: $text)
        .navigationTitle("Forgot password")
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
