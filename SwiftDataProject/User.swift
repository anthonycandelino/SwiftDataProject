//
//  User.swift
//  SwiftDataProject
//
//  Created by Anthony Candelino on 2024-08-31.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
        
    // deleteRule of .cascade (often best choice to use) means when we delete a User, it will cascade in SwiftData and delete Job(s) which are tied to the User
    // by default, .nullify rule is used which only sets property to nil when related object is deleted, however with .cascade, we ensure it actually deletes the Job data tied to the User
    @Relationship(deleteRule: .cascade) var jobs = [Job]() // links to Job class
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
