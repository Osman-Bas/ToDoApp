//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
