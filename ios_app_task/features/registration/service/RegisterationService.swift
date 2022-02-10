//
//  RegisterationService.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 09/02/2022.
//

import Foundation

class RegistrationService{
    public func register(firstName: String,lastName: String,email: String,password: String,completionHandler: @escaping (RegisterResponseModel) -> Void){
        var result: RegisterResponseModel?
        var request = URLRequest(url: URL(string: "https://vyod.manaknightdigital.com/member/api/register")!)
        request.httpMethod = "POST"
        let json = [
            "email": email,
            "password": password,
            "first_name": firstName,
            "last_name": lastName,
            "code": "lx5kk07R"
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
            if let httpResponse = response as? HTTPURLResponse {
                switch (httpResponse.statusCode) {
                    case 200:
                        do{
                            result = try JSONDecoder().decode(RegisterResponseModel.self, from: data)
                            DispatchQueue.main.async {
                                completionHandler(result!)
                            }
                        } catch{
                            print("failed to convert \(error.localizedDescription)")
                        }
                    default:
                        print(data)
                }
            }
        })
        task.resume()
    }
}
