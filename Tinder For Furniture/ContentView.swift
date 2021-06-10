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
                ZStack {
                    AsyncImage(
                        url: furniture.url,
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    Text(furniture.name)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
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
