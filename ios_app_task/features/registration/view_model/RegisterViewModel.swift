//
//  RegisterViewModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 09/02/2022.
//

import Foundation

class RegisterViewModel{
    var registerServce: RegistrationService
    
    init(registerService: RegistrationService){
        self.registerServce = registerService
    }
    
    public func register(firstName: String,lastName: String,email: String,password: String){
        registerServce.register(firstName: firstName, lastName: lastName, email: email, password: password){
            data in
            print(data.data.userID)
        }
    }
}
