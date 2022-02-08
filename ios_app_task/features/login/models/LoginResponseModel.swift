//
//  LoginResponseModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import Foundation

struct LoginResponseModel: Codable {
    let success: Bool
    let data: LoginDataClass
}

struct LoginDataClass: Codable {
    let accessToken, refreshToken: String
    let userID: Int
    let email: String
    let image: String
    let firstName, lastName: String

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case userID = "user_id"
        case email, image
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
