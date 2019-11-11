//
//  SignUpViewController.swift
//  LoginNoXcuse
//
//  Created by Habibo Rataxes on 26/09/2019.
//  Copyright © 2019 Habibo Rataxes. All rights reserved.
//

import UIKit



class SignUpViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        
        let newUser = User(
            
            username: usernameTextField.text!,
            email: emailTextField.text!,
            password: passwordTextField.text!
        )
        
        print(newUser.username)
        
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
