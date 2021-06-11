//
//  ContentView.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 10/06/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var favouritesStore: FavouritesStore
    
    var body: some View {
        VStack {
            Text("All Furniture").font(.title)
            List {
                ForEach(Furniture.previewData) { furniture in
                    ZStack {
                        AsyncImage(
                            url: URL(string: furniture.url),
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
                    .swipeActions {
                        Button(action: {
                            favouritesStore.addToFavourites(furniture: furniture)
                            
                        }) {
                            Image(systemName: "hands.sparkles")
                        }
                    }
                    .tint(.green)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(favouritesStore: FavouritesStore())
    }
}
