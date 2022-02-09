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
    public func getData(){
        loginService.authenticate{
            response in
            print(response.data.email)
        }
    }
}
