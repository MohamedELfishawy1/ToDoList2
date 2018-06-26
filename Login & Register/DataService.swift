//
//  DataService.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/26/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import Foundation
import Firebase



let DATABASE = Database.database().reference()


class DataService {
    
    static let instance = DataService()
    
    let REF_USERS = DATABASE.child("Users")
}

