//
//  Extensions.swift
//  ToDoApp
//
//  Created by Osman Baş on 20.03.2025.
//

import Foundation

extension Encodable{
    func asDictonary() -> [String:Any]{
        guard let data = try? JSONEncoder().encode(self)else{
            return [:]
        }
        
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}
