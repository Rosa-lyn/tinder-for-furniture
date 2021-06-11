//
//  TabBarView.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 11/06/2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Text("Home")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
