//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 17/09/2024.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }
    
    //    func getAppetizers() {
    //        isLoading = true
    //        NetworkManager.shared.getAppetizers { result in
    //            DispatchQueue.main.async { [weak self] in
    //                self?.isLoading = false
    //                switch result {
    //                case .success(let appetizers):
    //                    self?.appetizers = appetizers
    //                case .failure(let error):
    //                    switch error {
    //                    case .invalidURL:
    //                        self?.alertItem = AlertContext.invalidURL
    //                    case .invalidResponse:
    //                        self?.alertItem = AlertContext.invalidResponse
    //                    case .invalidData:
    //                        self?.alertItem = AlertContext.invalidData
    //                    case .unableToComplete:
    //                        self?.alertItem = AlertContext.unableToComplete
    //                    }
    //                }
    //            }
    //        }
    //    }
}
