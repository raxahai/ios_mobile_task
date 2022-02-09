//
//  ForgotPasswordService.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 10/02/2022.
//

import Foundation

class ForgotPasswordService{
    public func forgotPassword(completionHandler: @escaping (ForgotPasswordResponseModel) -> Void){
        var result: ForgotPasswordResponseModel?
        var request = URLRequest(url: URL(string: Paths.forgotPassword)!)
        request.httpMethod = "POST"
        let json = [
            "email": "raxa.hai@gmail.com",
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
                result = try JSONDecoder().decode(ForgotPasswordResponseModel.self, from: data)
                DispatchQueue.main.async {
                    completionHandler(result!)
                }
            } catch{
                print("failed to convert \(error.localizedDescription)")
            }
        })
        task.resume()
    }
    
    public func verifyAccount(completionHandler: @escaping (VerifyAccountModel) -> Void){
        var result: VerifyAccountModel?
        var request = URLRequest(url: URL(string: Paths.verifyAccount)!)
        request.httpMethod = "POST"
        let json = [
            "email": "raxa.hai@gmail.com",
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
                result = try JSONDecoder().decode(VerifyAccountModel.self, from: data)
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
