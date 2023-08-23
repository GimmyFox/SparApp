//
//  Models.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import Foundation


struct NewsModel {
    let id: Int
    let title: String
    let image: String
    var isRead: Bool = false
}

struct DiscountsModel {
    let id: Int
    let image: String
}

struct FeaturesModel {
    let id: Int
    let image: String
}

struct CatalogModel {
    let id: Int
    let catalogName: String
    let items: [Item]
    
    
    static let test1 = CatalogModel(id: 1, catalogName: "Рекомендуем", items: [.test1,.test2,.test3,.test4])
    static let test2 = CatalogModel(id: 2, catalogName: "Сладкое настроение", items: [.test1,.test2,.test3,.test4])
}


struct Item {
    let id: Int
    let price: Double
    let image: String
    let discountBadge: DiscountBadge?
    
    static let test1 = Item(id: 1, price: 199.40, image: "", discountBadge: .specialPrice)
    static let test2 = Item(id: 2, price: 99.99, image: "", discountBadge: .priceAttack)
    static let test3 = Item(id: 3, price: 135.32, image: "", discountBadge: nil)
    static let test4 = Item(id: 4, price: 199.05, image: "", discountBadge: .priceByCard)
    
}

enum DiscountBadge: String {
    case specialPrice = "Супер цена"
    case priceByCard = "Цена по карте"
    case priceAttack = "Удар по ценам"
}
