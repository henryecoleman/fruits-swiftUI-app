//
//  FruitModel.swift
//  Fructus
//
//  Created by H Coleman on 23/12/2020.
//

import SwiftUI

// FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
