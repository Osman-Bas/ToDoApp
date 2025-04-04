//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Osman Baş on 19.03.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("alpha-logo3")
                .resizable()
                .frame(width: 150,height: 150,alignment: .top)
            Text("What-ToDo")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.top,30)
        }.padding(.top,100)
    }
}

#Preview {
    HeaderView()
}
