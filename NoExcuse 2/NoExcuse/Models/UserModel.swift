//
//  UserModel.swift
//  LoginNoXcuse
//
//  Created by Habibo Rataxes on 27/09/2019.
//  Copyright © 2019 Habibo Rataxes. All rights reserved.
//

import UIKit

class User {
    
    var username: String
    var email: String
    var password: String
    
    init(username: String, email: String, password: String) {
        self.username = username
        self.email =  email
        self.password = password
    }
    
}


