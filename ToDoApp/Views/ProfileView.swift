//
//  ProfileView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {}
    
    var body: some View {
        NavigationView{
            VStack{
                
                if let user = viewModel.user{
                    profile(user: user)
                } else {
                    Text("Profil Yükleniyor...")
                }
                
                
                
                BigButton(title: "Çıkış Yap") {
                    viewModel.logout()
                }
            }
            .navigationTitle("PROFİLE")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(Color.blue)
            .frame(width: 125, height: 125)
        VStack{
            HStack {
                Text("İsim:")
                    .font(.headline)
                Text(user.name)
            }
            HStack {
                Text("Email:")
                    .font(.headline)
                Text(user.email)
            }
            HStack {
                Text("Kayıt Tarihi:")
                    .font(.headline)
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date:.abbreviated, time:.shortened))")
            }
        }
    }
    
}
#Preview {
    ProfileView()
}
