//
//  ContentView.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 10/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var furnitureItems = Furniture.previewData
    
    var body: some View {
        List {
            ForEach(furnitureItems) { furniture in
                Text(furniture.name)
                    .swipeActions {
                        Button(action: {
//                            furniture.isLiked.toggle()
                        }, label: {
                            Text("like")
                        })
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
