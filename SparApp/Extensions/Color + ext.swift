//
//  Color + ext.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import Foundation
import SwiftUI

extension Color {
    func random(randomOpacity: Bool = false) -> Color {
            Color(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                opacity: randomOpacity ? .random(in: 0...1) : 1
            )
        }
}
