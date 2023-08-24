//
//  NewsCollection.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import SwiftUI

struct NewsCollection: View {
    @Binding var models: [NewsModel]
    
    init(models: Binding<[NewsModel]> ) {
        self._models = models
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(models.indices, id: \.self) { index in
                    
                    NewsObject(model: $models[index])
                }
            }
            .padding(.horizontal)
        }
        
    }
}

struct NewsObject: View {
    @Binding var model: NewsModel
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(lineWidth: 2)
                .foregroundColor(model.isRead ? .clear : .green)
                .frame(width: 55, height: 55)
                .background(
                    Circle()
                        .strokeBorder(lineWidth: 2)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .foregroundColor(.clear.random().opacity(0.5))
                        .frame(width: 49, height: 49)
                )
            Text(model.title)
                .foregroundColor(.black)
                .lineLimit(2)
                .frame(width: 55, alignment: .center)
                .font(.system10normal)
                .multilineTextAlignment(.center)
            
            
        }
        .onTapGesture {
            withAnimation {
                model.isRead = true
            }
        }
    }
}

//struct NewsCollection_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsCollection(models: [NewsModel(id: 1, title: "Мы в соцсетях", image: "", isRead: false), NewsModel(id: 2, title: "Мы в соцсетях", image: "", isRead: false), NewsModel(id: 3, title: "Мы в соцсетях", image: "", isRead: false), NewsModel(id: 4, title: "Мы в соцсетях", image: "", isRead: false)])
//    }
//}
