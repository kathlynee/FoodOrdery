//
//  Product.swift
//  FoodOrdery
//
//  Created by MacBook Pro on 30/05/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Ketoprak", image: "food1", price: 25000),
                   Product(name: "Martabak Manis", image: "food2", price: 29000),
                   Product(name: "Bakso Ayam", image: "food3", price: 24000),
                   Product(name: "Nasi Padang", image: "food4", price: 28000),
                   Product(name: "Sate Ayam", image: "food5", price: 56000),
                   Product(name: "Sayur Lodeh", image: "food6", price: 27000),
                   Product(name: "Pecel Ayam", image: "food7", price: 26000),
                   Product(name: "Es Cendol", image: "food8", price: 21000)]
