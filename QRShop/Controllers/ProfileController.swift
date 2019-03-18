//
//  UserProfileController.swift
//  QRShop
//
//  Created by Yehor on 3/18/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var CashLabel: UILabel!
    @IBOutlet weak var CartLabel: UILabel!
    @IBOutlet weak var UsernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sd")
        /*print(ServiceReference.currentUser?.cash)
        print(ServiceReference.currentUser?.name)
        print(ServiceReference.currentUser?.id)
        
        UsernameLabel.text = ServiceReference.currentUser?.name
        CashLabel.text = ServiceReference.currentUser?.cash
        CartLabel.text = String(ServiceReference.getGoods().count)*/
        
    }
    

    @IBAction func clearCartButtonClick(_ sender: Any) {
        ServiceReference.clearGoods()
    }
    
    
    @IBAction func logOutButtonClick(_ sender: Any) {
        /*ServiceReference.logOut()
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "logInNavController") as! UINavigationController
        self.present(nextViewController, animated:true, completion:nil)*/
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
