//
//  Order.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 03/10/2024.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItem(at offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
}
