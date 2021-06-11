//
//  TabBarView.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 11/06/2021.
//

import SwiftUI

struct TabBarView: View {
    var favouritesStore = FavouritesStore()
    
    var body: some View {
        TabView {
            ContentView(favouritesStore: favouritesStore)
                .tabItem {
                    Image(systemName: "house")
                }
            MyFurnitureView(favouritesStore: favouritesStore)
                .tabItem {
                    Image(systemName: "hands.sparkles")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
