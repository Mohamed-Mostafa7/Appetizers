//
//  Alert.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 17/09/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    // MARK: - Networking Alerts
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There were an issue connecting to the server. If this persist pleas contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("The response from the server was invalid. Please contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data recieved from the server was invalid. Please contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
    // MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all the fields in the form have been filled out."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail      = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess   = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile information saved successfully."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData   = AlertItem(title: Text("Profile Error"),
                                            message: Text("there is an Error saving or retrieving your profile information."),
                                            dismissButton: .default(Text("OK")))
}
