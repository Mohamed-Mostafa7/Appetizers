//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 17/09/2024.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [weak self] in
                self?.isLoading = false
                switch result {
                case .success(let appetizers):
                    self?.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self?.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self?.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self?.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self?.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
    
}
