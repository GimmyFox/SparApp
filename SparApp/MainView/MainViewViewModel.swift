//
//  MainViewViewModel.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import Foundation


class MainViewViewModel: ObservableObject {
    var searchText = "Москва, Московская область"
    
    @Published var news: [NewsModel] = [
        .init(id: 1, title: "Мы в соцсетях", image: ""),
        .init(id: 2, title: "Новинки недели", image: ""),
        .init(id: 3, title: "Рецепт недели", image: ""),
        .init(id: 4, title: "Вкусы лета", image: ""),
        .init(id: 5, title: "Конкурсы в соцсетях", image: "")
    ]
    
    @Published var discounts: [DiscountsModel] = [
        .init(id: 1, image: ""),
        .init(id: 3, image: ""),
        .init(id: 4, image: ""),
        .init(id: 5, image: ""),
        .init(id: 6, image: ""),
        .init(id: 7, image: "")
    ]
    @Published var features: [FeaturesModel] = [
        .init(id: 1, image: ""),
        .init(id: 2, image: ""),
        .init(id: 3, image: ""),
        .init(id: 4, image: ""),
        .init(id: 5, image: ""),
        .init(id: 6, image: ""),
    ]
    @Published var catalog: [CatalogModel] = [.test1, . test2]
}
