//
//  CustomToolBar.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import Foundation
import SwiftUI

struct CustomNavigation: View {
    @Binding var text: String
    init(text: Binding<String>) {
        self._text = text
    }
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 8)
                        .foregroundColor(.red)
                    TextField("", text: $text)
                        .foregroundColor(.black)
                }
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 25).strokeBorder(lineWidth: 1).foregroundColor(.gray.opacity(0.1)))
                Button {
                    
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 25, height: 15)
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal)
        }
        Divider()
    }
}
