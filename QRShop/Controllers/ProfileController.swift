//
//  UserProfileController.swift
//  QRShop
//
//  Created by Yehor on 3/18/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    
    @IBOutlet weak var NameUILl: UILabel!
    @IBOutlet weak var CashUILl: UILabel!
    @IBOutlet weak var CartUILl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameUILl.text = ServiceReference.currentUser?.name
        CashUILl.text = "Cash: \(ServiceReference.currentUser!.cash)$"
        CartUILl.text = "\(String(ServiceReference.getGoods().count)) In Cart"
        
    }
    

    @IBAction func clearCartButtonClick(_ sender: Any) {
        ServiceReference.clearGoods()
    }
    
    
    @IBAction func logOutButtonClick(_ sender: Any) {
        ServiceReference.logOut()
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "logInNavController") as! UINavigationController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
