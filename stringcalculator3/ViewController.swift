//
//  ViewController.swift
//  stringcalculator3
//
//  Created by Fernando Gil Otero on 11/12/2019.
//  Copyright © 2019 Fernando Gil Otero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var logInOutlet: UIButton!
    @IBOutlet weak var logOutOutlet: UIButton!
    
    
    @IBAction func logInAction(_ sender: Any) {
        if usernameTextField.text == "admin" && passwordTextField.text == "admin" {
            login()
        }
    }
    @IBAction func logOutAction(_ sender: Any) {
        logout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSetUp()
    }

    func initSetUp(){
        logOutOutlet.isHidden = true
    }
    
    func login(){
        usernameTextField.isHidden = true
        passwordTextField.isHidden = true
        logInOutlet.isHidden = true
        logOutOutlet.isHidden = false
    }
    
    func logout(){
        usernameTextField.isHidden = false
        passwordTextField.isHidden = false
        logInOutlet.isHidden = false
        logOutOutlet.isHidden = true
    }

}

