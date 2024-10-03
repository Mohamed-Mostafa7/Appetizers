//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
