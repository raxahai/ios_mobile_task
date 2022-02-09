//
//  ForgotPasswordViewModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 10/02/2022.
//

import Foundation
import UIKit

class ForgotPasswordViewModel{
    var forgotPasswordService: ForgotPasswordService
    
    init(forgotPasswordService: ForgotPasswordService){
        self.forgotPasswordService = forgotPasswordService
    }
    
    public func verifyAccount() -> Bool{
        var isSuccessful: Bool = false
        forgotPasswordService.verifyAccount(completionHandler: {
            result in
            isSuccessful = result.success
        })
        return isSuccessful
    }
    
    public func forgotPassword(){
        forgotPasswordService.forgotPassword(completionHandler: {
            result in
            guard self.verifyAccount() else {
                print("verify account needed")
                return;
            }
        })
    }
}
