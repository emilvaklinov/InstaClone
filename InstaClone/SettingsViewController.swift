//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Emil Vaklinov on 25/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutClicked(_ sender: Any) {
        
        do {
            
       try Auth.auth().signOut()
            performSegue(withIdentifier: "logOut", sender: nil)
       
        }catch{
            print("error")
        }
    }
}
