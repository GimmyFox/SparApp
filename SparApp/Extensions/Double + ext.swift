//
//  Double + ext.swift
//  SparApp
//
//  Created by Maksim Guzeev on 23.08.2023.
//

import Foundation

extension Double {
    var clean: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.usesSignificantDigits = false
        numberFormatter.groupingSeparator = ""
        numberFormatter.roundingMode = .down
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter.string(from: NSNumber(value: self)) ?? ""
        }
}
