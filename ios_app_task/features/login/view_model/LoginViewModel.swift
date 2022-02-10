//
//  LoginViewModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import Foundation

class LoginViewModel{
    var loginService: LoginService
    
    init(loginService: LoginService){
        self.loginService = loginService
    }
    public func getData(email: String,password: String){
        loginService.authenticate(email: email, password: password){
            response in
            print(response.data.email)
        }
    }
}
