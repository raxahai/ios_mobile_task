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
    
    public func register(){
        registerServce.register{
            data in
            print(data.data.userID)
        }
    }
}
