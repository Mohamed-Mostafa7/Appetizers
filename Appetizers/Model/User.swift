//
//  User.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 01/10/2024.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
