//
//  LoginViewModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject{
    var loginService: LoginService
    
    init(loginService: LoginService){
        self.loginService = loginService
    }
    
    @Published var isLoggedIn: Bool = false
    
    public func getData(email: String,password: String){
        loginService.authenticate(email: email, password: password){
            response in
            guard response.success else{
                self.isLoggedIn = false
                return
            }
            self.isLoggedIn = true
        }
    }
}
