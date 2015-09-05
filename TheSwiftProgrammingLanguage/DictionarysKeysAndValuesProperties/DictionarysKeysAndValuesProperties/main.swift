//
//  main.swift
//  DictionarysKeysAndValuesProperties
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Dictionary keys and values properties.

let winterMonths =
[12 : "December", 1 : "January", 2 : "February", 3 : "March"]

// print the winterMonths Dictionary
println("winterMonths DICTIONARY IS")
println(winterMonths)

// print winterMonth's keys
println("\nwinterMonths KEYS ARE:")
for key in winterMonths.keys {
    println(key)
}

// print winterMonths values
println("\nwinterMonths VALUES ARE:")
for value in winterMonths.values {
    println(value)
}

// use for...in to iterate through the iterable keys collection
println("\nfor...in ITERATING THROUGH KEYS COLLECTION")

for monthNumber in winterMonths.keys {
    println("winterMonths[\(monthNumber)] \(winterMonths[monthNumber]!)")
}

println()

// convert iterable keys collection to an Array an process it
println("ARRAY OF winterMonths.keys")
let winterMonthsNumbersArray = [Int](winterMonths.keys)
for monthNumber in winterMonthsNumbersArray {
    println("\(monthNumber) ")
}

println()

// convert iterable values collection to an Array and process it
println("ARRAY OF winterMonths.values")
let winterMonthsNamesArray = [String](winterMonths.values)
for monthName in winterMonthsNamesArray {
    println("\(monthName)")
}