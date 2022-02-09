//
//  ForgotPasswordResponseModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 10/02/2022.
//

import Foundation

struct ForgotPasswordResponseModel : Codable{
    let success: Bool
    let message: String
    let code: String
}
