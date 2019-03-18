//
//  User.swift
//  QRShop
//
//  Created by Yehor on 3/18/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class User: Decodable {
    
    let id: String
    let name: String
    let cash: String
    
    init(id: String, name: String, cash: String) {
        self.id = id
        self.name = name
        self.cash = cash
    }
}

