//
//  rootToken.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 03/04/24.
//

import Foundation
struct rootToken: Codable {
    var Colors: [colorToken]
}

struct colorToken: Codable {
    var value: String
}
