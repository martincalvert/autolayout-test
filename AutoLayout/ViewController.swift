//
//  ViewController.swift
//  AutoLayout
//
//  Created by Calvert, Martin on 6/10/16.
//  Copyright © 2016 Calvert, Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    var secure: Bool = false { didSet { updateUI() } }
    
    func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secure Password" : "Password"
    }
    
    @IBAction func login() {
        
    }
    @IBAction func toggleSecure() {
        secure = !secure
    }
}

