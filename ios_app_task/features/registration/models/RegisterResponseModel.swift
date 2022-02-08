//
//  RegisterResponseModel.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 09/02/2022.
//

import Foundation

struct RegisterResponseModel: Codable {
    let success: Bool
    let data: DataClass
}


struct DataClass: Codable {
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
