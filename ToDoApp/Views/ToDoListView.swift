//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by Osman Baş on 18.03.2025.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId:String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Sil"){
                                viewModel.delete(id: item.id)
                            }.background(Color.red)
                        }
                }.listStyle(PlainListStyle())
                
            }
            .navigationTitle("GÖREVLER")
            .toolbar{
                Button{
                    //sheet kodları
                    viewModel.showingNewItemView = true
                }
                label:{
                    Image(systemName: "plus")
                        .padding()
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(NewItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "PHVOEWjIVvfCBLQCuDItH7mOjK83")
}
