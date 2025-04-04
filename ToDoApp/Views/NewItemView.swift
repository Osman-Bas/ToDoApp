//
//  NewItemView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import SwiftUI

struct NewItemView: View {
    @Binding var NewItemPresented: Bool
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack{
            Text("Yeni Görev")
                .font(.title)
                .bold()
                .padding(.top,100)
            Form{
                TextField("Başlık", text:$viewModel.title)
                DatePicker("Bitiş Tarihi", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                BigButton(title: "Kaydet"){
                    if viewModel.canSave{
                        viewModel.save()
                        NewItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                    
                }
            }
            //-----------------
            .alert(isPresented: $viewModel.showAlert,
                   content: {
                Alert(
                    title:Text("Hata!"),
                    message: Text("Lütfen verileri doğru girin."))
                
            })
            //----------------
        }
    }
}

#Preview {
    NewItemView(NewItemPresented: Binding(get: {
        return true
    }, set: { _ in
    }))
}
