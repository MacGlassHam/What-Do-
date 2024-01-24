//
//  ListRowView.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.diamond")
            Text(title)
            Spacer()
            
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the First list")
    }
}
