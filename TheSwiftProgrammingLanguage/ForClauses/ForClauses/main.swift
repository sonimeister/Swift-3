//
//  main.swift
//  ForClauses
//
//  Created by Angel Ricardo on 31/08/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

for count in 1...5 {
    print("\(count) ")
}

println();

for _ in 1...5 {
    print("hello ")
}

println();

for count in 1..<5 {
    print("\(count) ")
}

println();

for count in stride(from: 11, to: 1, by: -2) {
    print("\(count) ")
}

println();

for count in stride(from: 10, to: 50, by: 10) {
    print("\(count) ")
}

println()


// format a String right aligned in a field
func rightAlignedString(string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return padding + string
}

// create and configure an NSNumberFormatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

var amount = 1000.0 // initial amount before interest
let rate = 0.05 // interest rete

// display headers
println(String(format:"%@%@", "Year", rightAlignedString("Amount on deposit", 20)))

// calculate amount on deposit for each of ten years
for year in 1...5 {
    // calculate new amount for specified year
    amount *= (1.0 + rate)
    
    // display the year and the amount
    println(String(format:"%4d%@", year,
        rightAlignedString(formatter.stringFromNumber(amount)!, 20)))
}