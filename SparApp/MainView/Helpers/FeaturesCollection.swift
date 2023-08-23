//
//  FeaturesCollection.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct FeaturesCollection: View {
    @State var models: [FeaturesModel]
    init(models: [FeaturesModel]) {
        self.models = models
    }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(models, id: \.id) { model in
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(.clear.random().opacity(0.5))
                        .frame(width: 90, height: 115)
                        .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 0)
                }
            }
            .padding()
        }
    }
}

struct FeaturesCollection_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesCollection(models: [
            .init(id: 1, image: ""),
            .init(id: 2, image: ""),
            .init(id: 3, image: ""),
            .init(id: 4, image: ""),
            .init(id: 5, image: ""),
            .init(id: 6, image: ""),
        ])
    }
}
