//
//  AddView.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentastionMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        VStack {
            TextField("Enter Do", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 58)
                .background(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                .cornerRadius(15)
            .navigationTitle("Add New Do")
            .alert(isPresented: $showAlert, content: getAlert)
            
            Button(action: saveButtonPressed, label: {
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
    
    func saveButtonPressed(){
        if textAppropriation(){
            listViewModel.addItem(title: textFieldText)
            presentastionMode.wrappedValue.dismiss()
        }
    }
    func textAppropriation() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Type at least 3 characters"
            showAlert.toggle()
            return false
            
        }
        return true
    }
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
        
    }
}
