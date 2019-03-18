//
//  GoodsListController.swift
//  QRShop
//
//  Created by Yehor on 3/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class GoodsListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var userNameMenu: UIBarButtonItem!
    
    var Goods: [Product] = ServiceReference.getGoods()
    let ProductCellIdentifier = "ProductCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameMenu.title = ServiceReference.currentUser?.name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Goods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: ProductCellIdentifier) as! TableViewCell
            cell.nameLabel.text = Goods[indexPath.row].name
            cell.priceLabel.text = Goods[indexPath.row].price
        return cell
    }

}
