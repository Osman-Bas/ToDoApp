//
//  ToDoListItemViewViewModel.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel:ObservableObject {
    
    init () {}
    
    func toggleIsDone(item:ToDoListItem) {
        var ItemCopy = item
        ItemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(ItemCopy.asDictonary())
    }
}
