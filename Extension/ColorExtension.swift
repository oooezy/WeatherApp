//
//  ColorExtension.swift
//  WeatherApp
//
//  Created by 이은지 on 2022/07/07.
//

import SwiftUI

extension Color {
 
    static let darkGrayFont = Color(hex: "4f4f4f")
    static let lightGrayFont = Color(hex: "A1A1A1")
    static let bgColor = Color(hex: "F9F9F9")
    static let mainColor = Color(hex: "F9C144")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
      }
}
