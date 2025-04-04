//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                //header
                HeaderView()
                //register formu
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    Section(header: Text("KAYIT OL")){
                        TextField("", text:$viewModel.name, prompt: Text("Tam adınızı girin").foregroundColor(.gray))
                            .autocorrectionDisabled()
                        
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 5).fill(Color.white))
                            .shadow(color: .gray.opacity(0.7), radius: 3)
                        TextField("",text: $viewModel.email, prompt: Text("Email adresinizi girin").foregroundColor(.gray))
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 5).fill(Color.white))
                        
                            .shadow(color: .gray.opacity(0.7), radius: 3)
                        SecureField("",text: $viewModel.password, prompt: Text("Şifrenizi girin").foregroundColor(.gray))
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 5).fill(Color.white))
                            .shadow(color: .gray.opacity(0.7), radius: 3)
                        
                    }
                }
                .frame(height: 400)
                .scrollContentBackground(.hidden)
                .cornerRadius(10)
                .padding()
                
                BigButton(title:"Kayıt Ol"){
                    viewModel.register()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
