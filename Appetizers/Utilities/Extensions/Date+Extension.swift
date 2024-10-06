//
//  Date+Extension.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 06/10/2024.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsOld: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
