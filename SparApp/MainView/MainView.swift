//
//  MainView.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewViewModel()
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                CustomNavigation(text: $vm.searchText)
                ScrollView {
                    VStack(spacing: 15) {
                        NewsCollection(models: $vm.news)
                        DiscountInfiniteScroll(models: vm.discounts)
                        qrRectangle
                        FeaturesCollection(models: vm.features)
                        CatalogCollection(model: vm.catalog)
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
    
    private var qrRectangle: some View {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(.green.opacity(0.2))
            .frame(height: 150)
            
            .overlay(
                HStack {
                    VStack {
                        Group {
                            Text("0").font(.system24bold) + Text("  бонусов").font(.system14bold)
                        }
                        .foregroundColor(.black)
                        Spacer()
                    }
                    Spacer()
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 120, height: 120)
                        .foregroundColor(.white)
                        .overlay(
                            Image("qrCode")
                            .resizable()
                            .scaledToFit()
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                    .padding()
            )
            .padding(.horizontal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
