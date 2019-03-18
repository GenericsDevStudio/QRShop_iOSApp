//
//  Product.swift
//  QRShop
//
//  Created by Yehor on 3/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class Product {
    
    let identifier : String;
    let name : String;
    let price : String;
    
    init(identifier: String, name: String, price: String) {
        self.identifier = identifier;
        self.name = name;
        self.price = price;
    }
}
