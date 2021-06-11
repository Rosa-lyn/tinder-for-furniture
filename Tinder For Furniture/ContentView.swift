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
        VStack {
            Text("All Furniture").font(.title)
            List {
                ForEach(furnitureItems) { furniture in
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
                    .swipeActions {
                        Button(action: {
                            //                            furniture.isLiked.toggle()
                        }) {
                            Image(systemName: "hands.sparkles")
                        }
                    }
                    .tint(.green)
                    .swipeActions(edge: .leading) {
                        Button(action: {
                            //                            furniture.isLiked.toggle()
                        }) {
                            Image(systemName: "trash")
                        }
                    }
                    .tint(.red)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
