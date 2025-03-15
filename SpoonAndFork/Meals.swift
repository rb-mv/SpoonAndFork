//
//  SpoonAndFork.swift
//  SpoonAndFork
//
//  Created by Раджаб Магомедов on 14.03.2025.
//

import Foundation


struct Meals: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct SpoonAndForkRespose {
    let request: [Meals]
}


struct MokData {
    
    static let sampleSpoonAndFork = Meals(id: 0001,
                                                 name: "name-test",
                                                 description: "description",
                                                 price: 0.00,
                                                 imageURL: "",
                                                 calories: 1,
                                                 protein: 2,
                                                 carbs: 3)
}
