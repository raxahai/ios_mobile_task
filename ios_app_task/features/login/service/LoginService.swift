//
//  LoginService.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 09/02/2022.
//

import Foundation

class LoginService{
    public func authenticate(email: String,password: String,completionHandler: @escaping (LoginResponseModel) -> Void){
        var result: LoginResponseModel?
        var request = URLRequest(url: URL(string: Paths.login)!)
        request.httpMethod = "POST"
        let json = [
            "email": email,
            "password": password
        ] as [String:Any]
        do{
            let requestBody = try JSONSerialization.data(withJSONObject: json, options: .fragmentsAllowed)
            request.httpBody = requestBody
        } catch{
            print("Object not serialized properly")
        }
        
        request.allHTTPHeaderFields = [
            "content-type":"application/json"
        ]
        let task = URLSession.shared.dataTask(with: request, completionHandler: {
            data,response,error in
            
            guard let data = data,error==nil else {
                print("Something went wrong")
                return
            }
            do{
                result = try JSONDecoder().decode(LoginResponseModel.self, from: data)
                DispatchQueue.main.async {
                    completionHandler(result!)
                }
            } catch{
                print("failed to convert \(error.localizedDescription)")
            }
        })
        task.resume()
    }
}
