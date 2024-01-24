//
//  ListRowView.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplete ? "checkmark.diamond" : "diamond")
                .foregroundColor(item.isComplete ? .green : .orange)
            Text(item.title)
            Spacer()
            
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "FirstItem!", isComplete: true)
    static var item2 = ItemModel(title: "Second", isComplete: false)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
            
        }
    }
}
