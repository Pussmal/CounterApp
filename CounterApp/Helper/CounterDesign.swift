//
//  CounterDesign.swift
//  CounterApp
//
//  Created by Алексей Моторин on 29.09.2022.
//

import UIKit

enum TextFontStyle {
    case title, body
    
    var textFont: UIFont {
        switch self {
        case .title:
            return UIFont.systemFont(ofSize: 20, weight: .heavy)
        case .body:
            return UIFont.systemFont(ofSize: 30, weight: .heavy)
        }
    }
    
    var textColor: UIColor {
        switch self {
        case .title:
            return #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 1, alpha: 1)
        case .body:
            return #colorLiteral(red: 0.8235294118, green: 0.8549019608, blue: 1, alpha: 1)
        }
    }
}

enum ColorStyle {
    case purple, yellow
    
    var colorSetings: UIColor {
        switch self {
        case .purple:
            return #colorLiteral(red: 0.6941176471, green: 0.6980392157, blue: 1, alpha: 1)
        case .yellow:
            return #colorLiteral(red: 1, green: 0.9607843137, blue: 0.8941176471, alpha: 1)
        }
    }
}

