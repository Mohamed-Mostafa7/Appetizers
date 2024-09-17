//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 17/09/2024.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        DispatchQueue.main.async {
            NetworkManager.shared.getAppetizers { result in
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
