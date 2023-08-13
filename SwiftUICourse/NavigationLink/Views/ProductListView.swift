//
//  ProductListView.swift
//  SwiftUICourse
//
//  Created by Eymen on 11.08.2023.
//

import SwiftUI

struct ProductListView: View {
    let model: [Product]
    var body: some View {
        List(model) { product in
            NavigationLink(destination: ProductDetailView(product: product)) {
                Text(product.name)
            }
        }
        .navigationTitle("Products")
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(model: ProductList)
    }
}
