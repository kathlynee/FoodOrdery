//
//  ProductRow.swift
//  FoodOrdery
//
//  Created by MacBook Pro on 30/05/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name).foregroundColor(.black)
                    .bold()

                Text("Rp.\(product.price),-").foregroundColor(.red)
            }
            
            Spacer()

            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.9, brightness: 0.85))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}
