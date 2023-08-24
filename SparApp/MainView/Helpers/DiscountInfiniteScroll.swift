//
//  DiscountInfiniteScroll.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct DiscountInfiniteScroll: View {
    @State var models: [DiscountsModel]
    
    init(models: [DiscountsModel]) {
        self.models = models
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(models, id: \.id) { model in
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 175)
                        .foregroundColor(.clear.random().opacity(0.5))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DiscountInfiniteScroll_Previews: PreviewProvider {
    static var previews: some View {
        DiscountInfiniteScroll(models: [
            .init(id: 1, image: ""),
            .init(id: 3, image: ""),
            .init(id: 4, image: ""),
            .init(id: 5, image: ""),
            .init(id: 6, image: ""),
            .init(id: 7, image: "")
        ])
    }
}
