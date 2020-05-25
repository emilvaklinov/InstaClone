//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Emil Vaklinov on 25/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "logOut", sender: nil)
        
    }
    
}
