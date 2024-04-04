//
//  Tokens.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 02/04/24.
//

import Foundation
import SwiftUI

struct RootToken: Codable {
    let global: GlobalToken
}

struct GlobalToken: Codable {
    let colors: ColorsToken

    enum CodingKeys: String, CodingKey {
        case colors = "Colors"
    }
}

struct ColorsToken: Codable {
    let primary: ColorToken
    let secondary: ColorToken

    enum CodingKeys: String, CodingKey {
        case primary = "Primary"
        case secondary = "Secondary"
    }
}

struct ColorToken: Codable {
    let value: String
    let type: String
}

class TokenColor {
    var primary: Color = .clear
    var secondary: Color = .clear
    
    init() {
        readJson()
    }

    func readJson() {
        guard let path = Bundle.main.url(forResource: "tokens", withExtension: "json") else {
            return
        }
        do {
            let data = try Data(contentsOf: path)
            let result = try JSONDecoder().decode(RootToken.self, from: data)

            let primaryColorValue: String? = result.global.colors.primary.value
            let secondaryColorValue: String? = result.global.colors.secondary.value
            
            if let primaryColorValue = primaryColorValue, let secondaryColorValue = secondaryColorValue {
                self.primary = Color(hex: primaryColorValue)
                self.secondary = Color(hex: secondaryColorValue)
            }
        } catch {
            print(error)
        }
    }
}
