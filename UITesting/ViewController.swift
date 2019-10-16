//
//  ViewController.swift
//  UITesting
//
//  Created by Narongsak Phungdee on 2/10/2562 BE.
//  Copyright © 2562 Narongsak Phungdee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SignInPress(_ sender: Any) {
        
        if(txtUsername.text == "")
        {
            let alert = UIAlertController(title: "Sign in", message: "Please input your username.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        }
        
        if(txtPassword.text == "")
        {
            let alert = UIAlertController(title: "Sign in", message: "Please input your password.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)        }
        
        if(txtUsername.text == "kidrock" && txtPassword.text == "1234")
        {
            let alert = UIAlertController(title: "Sign in", message: "Sign in success.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Sign in", message: "Username or password is invalid.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func RegisterPress(_ sender: Any)
    {
        
    }
}

