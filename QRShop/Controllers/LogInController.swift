//
//  ViewController.swift
//  QRShop
//
//  Created by Yehor on 3/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class LogInController: UIViewController {

    @IBOutlet weak var LogInEdit: UITextField!
    @IBOutlet weak var PasswordEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logInBtnOnClick(_ sender: Any) {
        print("He")
        let login = LogInEdit.text
        let password = PasswordEdit.text
        ServiceReference.SendAuthQuery(login!, password!) { result in
            print(result.name)
            ServiceReference.currentUser! = User(id: result.id, name: result.name, cash: result.cash)
            if result.id != "0" {
                DispatchQueue.main.async {
                    self.logInApp()
                }
            }
        }
    }
    
    func logInApp() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "logInNavConroller") as! UINavigationController
        self.present(nextViewController, animated:true, completion:nil)
    }

}

