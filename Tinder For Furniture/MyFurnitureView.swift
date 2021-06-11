//
//  MyFurnitureView.swift
//  Tinder For Furniture
//
//  Created by Tom Hogg on 11/06/2021.
//

import SwiftUI

struct MyFurnitureView: View {
    @ObservedObject var favouritesStore: FavouritesStore
    
    @State private var showingAlert = false
    @State var backgroundColour = Color.white
    
    var body: some View {
        VStack {
            Text("My Furniture").font(.title)
            List {
                ForEach(favouritesStore.favourites) { furniture in
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
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                favouritesStore.removeFromFavourites(furniture: furniture)
                            }) {
                                Image(systemName: "trash")
                            }
                        }
                        .tint(.red)
                        .listRowSeparator(.hidden)
                        .listRowBackground(backgroundColour)
                }
            }
        }
        .refreshable {
            backgroundColour = Color.random
        }
        .background(backgroundColour)
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct MyFurnitureView_Previews: PreviewProvider {
    static var previews: some View {
        MyFurnitureView(favouritesStore: FavouritesStore())
    }
}
