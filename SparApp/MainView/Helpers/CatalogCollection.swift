//
//  CatalogCollection.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct CatalogCollection: View {
    @State var model: [CatalogModel]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(model, id: \.id) { model in
                Text(model.catalogName)
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .bold))
                    .padding(.horizontal)
                createObjects(items: model.items)
            }
        }
    }
    
    @ViewBuilder
    func createObjects(items: [Item]) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(items, id: \.id) { item in
                    ItemCell(model: item)
                }
            }
            .padding()
        }
    }
}

struct ItemCell: View {
    @ObservedObject var vm: ItemCellViewModel
    
    init(model: Item) {
        self._vm = ObservedObject(wrappedValue: ItemCellViewModel(model: model))
    }
    var body: some View {
        
        VStack {
            Color.white
                .frame(width: 120, height: 120)
                .cornerRadius(16)
                .overlay(
                    Image("")
                        .resizable()
                        .scaledToFit()
                )
            HStack {
                Group {
                    Text("\(vm.model.price.clean)")
                        .font(.system(size: 12, weight: .bold))
                    + Text("₽/шт")
                        .font(.system(size: 12))
                }
                .foregroundColor(.black)
                
                    
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "cart.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green)
                }
            }
            .padding(5)
        }
        .overlay(VStack {
            HStack {
                if let disc = vm.model.discountBadge {
                    HStack {
                        
                        Text(disc.rawValue)
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                            .padding(.leading)
                            .padding([.vertical, .trailing], 2)
                    }
                    .background(
                            chooseColor(badge: disc)
                                .cornerRadius(4, corners: [.topRight, .bottomRight])
                    )
                }
                Spacer()
            }
            Spacer()
        })
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 0)
                
        )
    }
    
    func chooseColor(badge: DiscountBadge) -> Color {
        switch badge {
        case .priceByCard: return .green.opacity(0.5)
        case .priceAttack: return .red.opacity(0.5)
        case .specialPrice: return .red.opacity(0.5)
        }
    }
}

class ItemCellViewModel: ObservableObject {
    @Published var model: Item
    
    init(model: Item) {
        self.model = model
    }
}

struct CatalogCollection_Previews: PreviewProvider {
    static var previews: some View {
        CatalogCollection(model: [.test1, .test2])
    }
}
