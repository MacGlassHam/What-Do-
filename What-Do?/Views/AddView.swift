//
//  AddView.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        VStack {
            TextField("Enter Do", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 58)
                .background(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                .cornerRadius(15)
            .navigationTitle("Add New Do")
            
            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .frame(height: 58)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(15)
                
            })
        }
        .padding(12)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        
    }
}
