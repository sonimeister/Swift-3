//
//  main.swift
//  CompountInterest
//
//  Created by Angel Ricardo on 09/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//
// Overloading operators for NSDecimalNumber
import Foundation

// format a String right aligned in a field
func rightAlignedString(string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return padding + string
}

// overloaded * operator to multiply NSDecimalNumbers
func *(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByMultiplyingBy(right)
}

// overloaded + operator to add NSDecimalNumbers
func +(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByAdding(right)
}

var amount = NSDecimalNumber(string: "1000.00") // amount before interest
let rate = NSDecimalNumber(string: "0.05") // interest rate

// display headers
println(String(format: "%@%@", "Year",
    rightAlignedString("Amount on deposit", 20)))

// calculate amount on deposit for each of ten years
for year in 1...5 {
    // calculate new amount for specified year using overloaded operators
    amount = amount * (rate + NSDecimalNumber.one())
    
    let formattedAmount = NSNumberFormatter.localizedStringFromNumber(
        amount, numberStyle: .CurrencyStyle)
    
    // display the year and the amount
    println(String(format: "%4d%@", year,
        rightAlignedString(formattedAmount, 20)))
}