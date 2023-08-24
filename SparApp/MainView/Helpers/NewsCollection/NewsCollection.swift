//
//  NewsCollection.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct NewsCollection: View {
    @StateObject var vm: NewsCollectionViewModel
    
    init(models: [NewsModel]) {
        self._vm = StateObject(wrappedValue: NewsCollectionViewModel(models: models))
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(vm.models, id: \.id) { model in
                    NewsObject(model: model)
                }
            }
            .padding(.horizontal)
        }
    }
}

class NewsCollectionViewModel: ObservableObject {
    @Published var models: [NewsModel]
    init(models: [NewsModel]) {
        self.models = models
    }
}
