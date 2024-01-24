//
//  ItemModel.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isComplete: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    func updateComplete() -> ItemModel {
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}
