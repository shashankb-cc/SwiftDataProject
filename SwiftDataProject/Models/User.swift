//
//  User.swift
//  SwiftDataProject
//
//  Created by Shashank B on 28/02/25.
//

import Foundation
import SwiftData


@Model
class Job {
    var name: String
    var priority: Int
    var owner: User?

    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}

@Model
class User {
    var name:String
    var city:String
    var joinDate:Date
    
    //this is similar to on delete cascase of mysql else only user wil be set to null
    @Relationship(deleteRule: .cascade) var jobs = [Job]()

    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
