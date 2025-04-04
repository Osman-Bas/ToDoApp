//
//  MainViewViewModel.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseAuth
import Foundation

class MainViewViewModel:ObservableObject{
    @Published var currentUserId:String=""
    
   
    init(){
        Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            self?.currentUserId = user?.uid ?? ""
        }
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
}



}
