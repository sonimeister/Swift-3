//
//  UtilityFunctions.swift
//  EmployeeHierarchy
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// convert a numeric value to localized percent string
public func formatAsPercent(number: NSNumber) -> String {
    let percentFormatter = NSNumberFormatter()
    percentFormatter.numberStyle = .PercentStyle
    percentFormatter.minimumFractionDigits = 2
    percentFormatter.locale = NSLocale.currentLocale()
    return percentFormatter.stringFromNumber(number)!
}

// conver a numeric value to localized currency string
func formatAsCurrency(number: NSNumber) -> String {
    return NSNumberFormatter.localizedStringFromNumber(
        number, numberStyle: .CurrencyStyle)
}