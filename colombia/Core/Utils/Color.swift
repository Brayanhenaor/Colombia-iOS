//
//  Color.swift
//  colombia
//
//  Created by Brayan Henao on 7/07/24.
//

import Foundation
import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: alpha
        )
    }
    
    static let darkGreen = Color(hex:0x29524A)
}
