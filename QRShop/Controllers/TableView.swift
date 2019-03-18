//
//  TableView.swift
//  QRShop
//
//  Created by Yehor on 3/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class TableView: UITableView {

    var Goods: [Product] = [Product(identifier: "123456", name: "Macbook", price: "60000")];
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return Goods.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: IndexPath!) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = Goods[indexPath.row].name
        cell.priceLabel.text = Goods[indexPath.row].price
        return cell
    }

}
