//
//  FavouritesStore.swift
//  Tinder For Furniture
//
//  Created by Tom Hogg on 11/06/2021.
//

import Foundation

class FavouritesStore: ObservableObject {
    @Published var favourites: [Furniture] = []
    
    func toggleFaves(furniture: Furniture) {
        furniture.isLiked.toggle()
    }
    
    
}
