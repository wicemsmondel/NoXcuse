//
//  LoginViewController.swift
//  LoginNoXcuse
//
//  Created by Habibo Rataxes on 30/09/2019.
//  Copyright © 2019 Habibo Rataxes. All rights reserved.
//

import UIKit




class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPasswd: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
//    let users: [User] = [
//    var habib = User(username: "Habib", email: "habib@email.com", password: "passe")
//    var wicem = User(username: "Wicem", email: "wicem@email.com", password: "passe")
//    var melik = User(username: "Melik", email: "melik@email.com", password: "passe")
//    var mehdi = User(username: "Medhi", email: "melik@email.com", password: "passe")
//    var anys = User(username: "Anys", email: "anys@email.com", password: "passe")]
    
    

     var user = User(username: "User", email: "user@email.com", password: "passe")
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   @IBAction func loginButton(_ sender: Any) {
    
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
