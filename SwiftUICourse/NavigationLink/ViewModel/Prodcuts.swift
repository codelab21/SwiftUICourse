//
//  Prodcuts.swift
//  SwiftUICourse
//
//  Created by Eymen on 11.08.2023.
//

import Foundation


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

let ProductList: [Product] = [
    Product(name: "Product A", description: "This is the description of Product A."),
    Product(name: "Product B", description: "This is the description of Product B."),
    Product(name: "Product C", description: "This is the description of Product C."),
    Product(name: "Product D", description: "This is the description of Product D."),
    Product(name: "Product E", description: "This is the description of Product E.")
]
