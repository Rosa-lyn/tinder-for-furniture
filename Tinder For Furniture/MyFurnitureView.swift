//
//  MyFurnitureView.swift
//  Tinder For Furniture
//
//  Created by Tom Hogg on 11/06/2021.
//

import SwiftUI

struct MyFurnitureView: View {
    @ObservedObject var favouritesStore: FavouritesStore
    
    var body: some View {
        VStack {
            Text("My Furniture").font(.title)
            List {
                ForEach(favouritesStore.favourites) { furniture in
                        ZStack {
                            AsyncImage(
                                url: furniture.url,
                                content: { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: .infinity)
                                    .frame(maxHeight: .infinity)
                            },
                                placeholder: {
                                ProgressView()
                            }
                            )
                            
                            Text(furniture.name)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        .listRowSeparator(.hidden)
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                furniture.isLiked.toggle()
                            }) {
                                Image(systemName: "trash")
                            }
                        }
                        .tint(.red)
                }
            }
        }
    }
}

struct MyFurnitureView_Previews: PreviewProvider {
    static var previews: some View {
        MyFurnitureView()
    }
}
