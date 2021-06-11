//
//  FavouritesStore.swift
//  Tinder For Furniture
//
//  Created by Tom Hogg on 11/06/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class FavouritesStore: ObservableObject {
    @Published var favourites: [Furniture] = []
    
    var db = Firestore.firestore()
    
    func toggleFaves(furniture: Furniture) {
//        furniture.isLiked.toggle()
    }
    
    func addToFavourites(furniture: Furniture) {
        let docRef = db.collection("MyFurniture").document("MyFurniture")
        docRef.updateData([
            "LikedFurniture" : FieldValue.arrayUnion([["name": furniture.name, "url": furniture.url]])
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Furniture added to likes")
            }
        }

    }
    
}
