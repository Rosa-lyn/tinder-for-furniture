//
//  Tinder_For_FurnitureApp.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 10/06/2021.
//

import SwiftUI
import Firebase

@main
struct Tinder_For_FurnitureApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
