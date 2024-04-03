//
//  Tokens.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 02/04/24.
//

import Foundation
import SwiftUI

enum TokenColor {
    case primary
    case secondary
    case accent

    // Função para retornar a cor correspondente ao enum
    func color() -> Color {
        switch self {
        case .primary:
            return Color.red
        case .secondary:
            return Color.green
        case .accent:
            return Color.blue
        }
    }
    
    func readJson() {
        guard let path = Bundle.main.url(forResource: "tokens", withExtension: "json") else {
            return
        }
        do {
            let data = try Data(contentsOf: path)
            let result = try JSONDecoder().decode(rootToken.self, from: data)
            print(result)
        } catch {
            print(error)
        }
    }
}
