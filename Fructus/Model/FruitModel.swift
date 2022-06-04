//
//  FruitModel.swift
//  FruitModel
//
//  Created by Ezequiel Rasgido on 10/09/2021.
//

import SwiftUI

//MARK: - FRUIT DATA MODEL Section

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
