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
    
    public func forgotPassword(email: String)-> Bool{
        var isVerifyAccount: Bool = false
        forgotPasswordService.forgotPassword(email: email,completionHandler: {
            result in
            print(result.message)
            guard result.success else {
                isVerifyAccount = self.verifyAccount()
                print(isVerifyAccount)
                print("verify account needed")
                return;
            }
        })
        return !isVerifyAccount
    }
}
