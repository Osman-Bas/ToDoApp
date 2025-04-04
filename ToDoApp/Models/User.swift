//
//  User.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import Foundation

struct User: Codable{
    
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
