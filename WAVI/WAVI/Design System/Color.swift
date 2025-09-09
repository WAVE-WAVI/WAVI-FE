//
//  Color.swift
//  WAVI
//
//  Created by 박현빈 on 9/5/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }

    static let primaryBlack   = Color(hex: "#040415")
    static let primaryBlue   = Color(hex: "#5188CC")
    static let primaryRed    = Color(hex: "#D55050")
    static let primaryGreen  = Color(hex: "#4DC6B2")
    static let primaryLightGreen   = Color(hex: "#9AE3AB")
    static let primaryPurple = Color(hex: "#66598F")
    static let primaryYellow = Color(hex: "#D5BA50")
    static let BaseBlack         = Color(hex: "#000000")
    static let BaseWhite         = Color(hex: "#FFFFFF")
    static let BaseBackground    = Color(hex: "#F1EFF2")
}
