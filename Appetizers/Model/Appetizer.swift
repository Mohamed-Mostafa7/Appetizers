//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 23.99,
                                           imageURL: "",
                                           calories: 45,
                                           protein: 10,
                                           carbs: 55)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let order1 = Appetizer(id: 0001,
                                           name: "order 1",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 23.99,
                                           imageURL: "",
                                           calories: 45,
                                           protein: 10,
                                           carbs: 55)
    
    static let order2 = Appetizer(id: 0002,
                                           name: "order 2",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 23.99,
                                           imageURL: "",
                                           calories: 45,
                                           protein: 10,
                                           carbs: 55)
    
    static let order3 = Appetizer(id: 0003,
                                           name: "order 3",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 23.99,
                                           imageURL: "",
                                           calories: 45,
                                           protein: 10,
                                           carbs: 55)
    static let order = [order1, order2, order3]
}
