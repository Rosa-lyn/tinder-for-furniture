//
//  Furniture.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 10/06/2021.
//

import Foundation

struct Furniture: Identifiable {
    var id: Int
    var name: String
    var url: String
}

extension Furniture {
    static let previewData: [Furniture] = [
        Furniture(id: 0,
                  name: "forest chair",
                  url: "https://images.unsplash.com/photo-1560765825-9c88b77934a5?ixid=MnwxMjA3fDB8MHxwaG90by1[…]GVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
                 ),
        Furniture(id: 1,
                  name: "shoebox",
                  url: "https://images.unsplash.com/photo-1539895477394-0ce2ee9f6b03?ixid=MnwxMjA3fDB8MHxwaG90[…]GVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1014&q=80"
                 )
    ]
}
