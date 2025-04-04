//
//  LoginView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                
                //Header
                HeaderView()

                //Form - email,şifre,buttton
                Form {
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    Section {
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                            TextField("",text: $viewModel.email, prompt: Text("Email adresinizi girin").foregroundColor(.gray))
                                .autocorrectionDisabled()
                                .autocapitalization(.none)                        }
                        .padding()
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        
                        .shadow(color: .gray.opacity(0.7), radius: 3)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                            SecureField("", text: $viewModel.password, prompt: Text("Şifrenizi Girin").foregroundColor(.gray))
                        }
                        .padding()
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .shadow(color: .gray.opacity(0.7), radius: 3)
                    }
                    .listRowBackground(Color.clear) // Form içindeki satırların arka planını temizle
                }
                .frame(height: 270)
                
                .scrollContentBackground(.hidden)
                .cornerRadius(10)
                .padding()

                BigButton(title: "Giriş Yap"){
                    viewModel.login()
                }
                Spacer()
                
                //Footer - hesabınız yok mu?
                VStack{
                    Text("Buralarda yeni misin")
                    NavigationLink("Yeni hesap oluştur!",destination: RegisterView())
                }
                .padding(.bottom,20)
            }
        }
        
        
    }
}

#Preview {
    LoginView()
}
