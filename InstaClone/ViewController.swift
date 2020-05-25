//
//  ViewController.swift
//  InstaClone
//
//  Created by Emil Vaklinov on 25/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInClicked(_ sender: Any) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if emailText.text != "" && passwordText.text != "" {
        
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (data, error) in
                
                if error != nil {
                    self.makeAlert(titleInpit: "Error", messageInput: error?.localizedDescription ?? "Error")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                    
                }
            }
        } else {
            makeAlert(titleInpit: "Error", messageInput: "Username/Password missing!")
        }
    }
    func makeAlert(titleInpit: String, messageInput: String) {
        let alert = UIAlertController(title: titleInpit, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

