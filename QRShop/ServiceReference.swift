//
//  ServiceReference.swift
//  QRShop
//
//  Created by Yehor on 3/18/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class ServiceReference {
    
    public static var currentUser: User? = User(id: "0", name: "null", cash: "null")
    
    static func SendAuthQuery(_ login: String, _ password: String, completionHandler: @escaping (_ result: User) -> ()) {
        
        print(login)
        print(password)
        let url = URL(string: "http://vasylko.zzz.com.ua/index.php/api/fdqr")!
        var request = URLRequest(url: url)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let postString = "login=\(login)&password=\(password)"
        request.httpBody = postString.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print(error as Any)
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print(response as Any)
            }
            
            let responseString = String(data: data, encoding: .utf8)
            print(responseString as Any)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                let user: [User] = try JSONDecoder().decode(Array<User>.self, from: data)
                //notesList = notesDataList.notes ?? [Note("0", "Купить хлеба", "Купить хлеба", "11.02.19")]
                completionHandler(user[0])
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
    
    
    
   static func SendSignUpQuery(_ login: String, _ password: String, completionHandler: @escaping (_ result: Bool) -> ()) {
        
        let url = URL(string: "http://vasylko.zzz.com.ua/index.php/api/adduser")!
        var request = URLRequest(url: url)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let postString = "login=\(login)&password=\(password)"
        request.httpBody = postString.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print(error as Any)
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print(response as Any)
            } else {
                let responseString = String(data: data, encoding: .utf8)
                print(responseString as Any)
                completionHandler(true)
            }
        }
        task.resume()
        
    }
}
