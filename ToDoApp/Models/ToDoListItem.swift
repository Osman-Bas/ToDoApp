//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id :String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state : Bool) {
        isDone = state
    }
    
}
