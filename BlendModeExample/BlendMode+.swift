//
//  BlendMode+.swift
//  BlendModeExample
//
//  Created by 송재훈 on 2023/08/09.
//

import SwiftUI

extension BlendMode: CaseIterable {
    public static var allCases: [BlendMode] = [.color, .colorBurn, .colorDodge, .darken,
                                               .destinationOut, .destinationOver, .difference, .exclusion,
                                               .hardLight, .hue, .lighten, .luminosity,
                                               .multiply, .normal, .overlay, .plusDarker,
                                               .plusLighter, .saturation, .screen, .softLight,
                                               .sourceAtop]
    
    var state: String {
        switch self {
        case .normal:
            return "normal"
        case .multiply:
            return "multiply"
        case .screen:
            return "screen"
        case .overlay:
            return "overlay"
        case .darken:
            return "darken"
        case .lighten:
            return "lighten"
        case .colorDodge:
            return "colorDodge"
        case .colorBurn:
            return "colorBurn"
        case .softLight:
            return "softLight"
        case .hardLight:
            return "hardLight"
        case .difference:
            return "difference"
        case .exclusion:
            return "exclusion"
        case .hue:
            return "hue"
        case .saturation:
            return "saturation"
        case .color:
            return "color"
        case .luminosity:
            return "luminosity"
        case .sourceAtop:
            return "sourceAtop"
        case .destinationOver:
            return "destinationOver"
        case .destinationOut:
            return "destinationOut"
        case .plusDarker:
            return "plusDarker"
        case .plusLighter:
            return "plusLighter"
        @unknown default:
            fatalError()
        }
    }
}
