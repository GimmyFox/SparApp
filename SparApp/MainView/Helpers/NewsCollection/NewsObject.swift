//
//  NewsObject.swift
//  SparApp
//
//  Created by Maksim Guzeev on 24.08.2023.
//

import Foundation
import SwiftUI

struct NewsObject: View {
    @State var model: NewsModel
    let objectColor: Color = .clear.random().opacity(0.5) // вынес в константу, чтобы не перерисовывалось при нажатии
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
                        .foregroundColor(objectColor)
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
