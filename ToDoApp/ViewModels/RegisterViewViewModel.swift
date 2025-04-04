//
//  RegisterViewViewModel.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth

class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password=""
    @Published var errorMessage=""
    
    
    init() {}
    
    func register(){
        guard validate() else{
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password){[weak self] result,error in
            guard let userId = result?.user.uid else{
                return
            }
            //insert metodu cağırılacak
            self?.insertUserRecord(id: userId)
            
        }
    }
    
    //-------------------------------------------------------------------
    
    private func insertUserRecord(id: String){
        
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictonary())
    }
    
    //--------------------------------------------------------------------
    private func validate()-> Bool {
        
        errorMessage=""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage="Lütfen tüm alanları doldurunuz!"
            return false
        }
        
        guard email.contains("@")&&email.contains(".")
        else{
            errorMessage = "Lütfen geçerli bir email adresi giriniz!"
            return false
        }
        
        guard password.count >= 6 else{
            errorMessage="Şifreniz en az 6 karakter olmalıdır!"
            return false
        }
        
        return true
    }
}
