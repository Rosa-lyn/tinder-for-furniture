//
//  Furniture.swift
//  Tinder For Furniture
//
//  Created by Rosalyn Land on 10/06/2021.
//

import Foundation

struct Furniture: Identifiable, Codable {
    var id: Int
    var name: String
    var url: String
    var isLiked: Bool = false
}

extension Furniture {
    static var previewData: [Furniture] = [
        Furniture(id: 0,
                  name: "forest chair",
                  url:  "https://images.unsplash.com/photo-1560765825-9c88b77934a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: false
                 ),
        Furniture(id: 1,
                  name: "shoebox",
                  url:  "https://images.unsplash.com/photo-1539895477394-0ce2ee9f6b03?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1014&q=80",
                  isLiked: true
                 ),
        Furniture(id: 2,
                  name: "orange sofa",
                  url:  "https://images.unsplash.com/photo-1567016432779-094069958ea5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: false
                 ),
        Furniture(id: 3,
                  name: "green stool",
                  url:  "https://images.unsplash.com/photo-1598300056393-4aac492f4344?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=920&q=80",
                  isLiked: false
                 ),
        Furniture(id: 4,
                  name: "rainbow hammock",
                  url:  "https://images.unsplash.com/photo-1576777739643-e73db5bd7441?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: false
                 ),
        Furniture(id: 5,
                  name: "plant tea pot",
                  url:  "https://images.unsplash.com/photo-1614617619547-d830b1cd7e05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: true
                 ),
        Furniture(id: 6,
                  name: "corner sofa",
                  url:  "https://images.unsplash.com/flagged/photo-1588262516915-e342186ecdf6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: false
                 ),
        Furniture(id: 7,
                  name: "wooden screen",
                  url:  "https://images.unsplash.com/photo-1588743903237-329f9da76dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2900&q=80",
                  isLiked: false
                 ),
        Furniture(id: 8,
                  name: "bookshelf",
                  url:  "https://images.unsplash.com/photo-1593085260707-5377ba37f868?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=800",
                  isLiked: false
                 ),
        Furniture(id: 9,
                  name: "a bed",
                  url:  "https://images.unsplash.com/photo-1616627561839-074385245ff6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2894&q=80",
                  isLiked: false
                 ),
        Furniture(id: 10,
                  name: "colourful books",
                  url:  "https://images.unsplash.com/photo-1558244662-0f555a954f11?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=964&q=80",
                  isLiked: false
                 ),
        Furniture(id: 11,
                  name: "white table",
                  url:  "https://images.unsplash.com/photo-1552406475-acece2e1979d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=908&q=80",
                  isLiked: false
                 ),
        Furniture(id: 12,
                  name: "forest chair 2.0",
                  url:  "https://images.unsplash.com/photo-1592780257592-4dca54df13ba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=902&q=80",
                  isLiked: false
                 ),
        Furniture(id: 13,
                  name: "star wars bed",
                  url:  "https://images.unsplash.com/photo-1621856363562-b69071c4042c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                  isLiked: false
                 ),
        Furniture(id: 14,
                  name: "lip sofa",
                  url:  "https://images.unsplash.com/photo-1616975573616-46cfa7197dd5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=932&q=80",
                  isLiked: false
                 )
    ]
}
