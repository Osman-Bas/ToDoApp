//
//  LoginViewViewModel.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    
    func validate()->Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Lütfen tüm alanları doldurunuz!"
            return false
        }
        
        guard !email.contains("@")&&email.contains(".")
        else{
            errorMessage = "Lütfen geçerli bir email adresi giriniz!"
            return false
        }
        return true
    }
}
