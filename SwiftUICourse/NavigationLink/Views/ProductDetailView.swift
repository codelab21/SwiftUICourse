//
//  ProductDetailView.swift
//  SwiftUICourse
//
//  Created by Eymen on 11.08.2023.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    var body: some View {
        VStack(spacing: 20) {
            Text(product.name)
                .font(.title).bold()
            Image(systemName: "shippingbox.fill")
                .font(.system(size: 60))
                .foregroundColor(.gray)
                .opacity(0.5)
            Text(product.description)
                .padding()
                .bold()
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .navigationTitle(product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(name: "Product A", description: "This is Product A Description"))
    }
}
