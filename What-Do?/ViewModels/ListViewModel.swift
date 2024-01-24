//
//  ListViewModel.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import Foundation


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems(){
        let newItems = [
            ItemModel(title: "This is First", isComplete: false),
            ItemModel(title: "Number Two", isComplete: true),
            ItemModel(title: "Three", isComplete: false),
            ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, isComplete: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel){
        
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateComplete()
        }        
    }
}
