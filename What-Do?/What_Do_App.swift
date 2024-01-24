//
//  What_Do_App.swift
//  What-Do?
//
//  Created by Cameron McGlasham on 24/01/2024.
//

import SwiftUI

@main
struct What_Do_App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
