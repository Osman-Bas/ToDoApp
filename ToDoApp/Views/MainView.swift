//
//  ContentView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        }else{
            LoginView()
        }
       
    }
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage:"house")
                }
            ProfileView()
                .tabItem{
                    Label("Profilee",systemImage: "person.circle")
                }
        }
    }
}








#Preview {
    MainView()
}
