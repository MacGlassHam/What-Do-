//
//  ListView.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
    "This is the first",
    "This is the second",
    "This is the third"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {item in
                ListRowView(title: item)
            }
            
        }
        .navigationTitle("What Ya Doing?")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


