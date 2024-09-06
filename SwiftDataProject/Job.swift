//
//  Job.swift
//  SwiftDataProject
//
//  Created by Anthony Candelino on 2024-09-06.
//

import Foundation
import SwiftData

@Model
class Job {
    var name: String
    var priority: Int
    var owner: User? // links to User class
    
    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
