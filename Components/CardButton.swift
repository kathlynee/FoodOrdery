//
//  CardButton.swift
//  FoodOrdery
//
//  Created by MacBook Pro on 30/05/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)

            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.yellow)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.8, brightness: 0.85))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
