//
//  CustomGradient.swift
//  BrightSwords
//
//  Created by Пазин Даниил on 04.11.2021.
//

import SwiftUI

struct CustomGradient {
    
    static func midnightCityGradient() -> Gradient {
        let firstColor = Color(red: 0.14, green: 0.15, blue: 0.15)
        let secondColor = Color(red: 0.25, green: 0.26, blue: 0.27)
        return Gradient(colors: [firstColor, secondColor])
    }
    
    static func zincGradient() -> Gradient {
        let firstColor = Color(red: 0.68, green: 0.66, blue: 0.59)
        let secondColor = Color(red: 0.95, green: 0.95, blue: 0.95)
        let thirdColor = Color(red: 0.86, green: 0.86, blue: 0.86)
        let fourthColor = Color(red: 0.92, green: 0.92, blue: 0.92)
        return Gradient(colors: [firstColor, secondColor, thirdColor, fourthColor])
    }
}
