//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 01/10/2024.
//

import Foundation

final class AccountViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthDate = Date()
    
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else {return}
        
        print("Changes have been saved successfully.")
    }
    
}
