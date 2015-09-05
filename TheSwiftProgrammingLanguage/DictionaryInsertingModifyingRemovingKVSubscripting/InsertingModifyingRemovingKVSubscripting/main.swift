//
//  main.swift
//  InsertingModifyingRemovingKVSubscripting
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Dictionary subscript operations and optionals.

// mutable Dictionary maps Roman numerals to their decimal equivalents
var romanNumerals = ["I" : 1, "II" : 2, "III" : 3,
    "V" : 5, "X" : 100] // 100 should be 10 -- we'll soon correct this

// print table of Roman numberals and decimal values
println("\nDECIMAL EQUIVALENTS OF ROMAN NUMBERALS")
println(romanNumerals)

// fix decimal equivalent on Roman numeral "X"
romanNumerals["X"] = 10
println("\nAFTER CORRECTING VALUE OF KEY \"X\"")
println(romanNumerals)

// use subscription to add a new key-value pair
romanNumerals["L"] = 50
println("\nADDED NEW KEY-VALUE PAIR [\"L\" : 50]")
println(romanNumerals)

// use subscripting to assign nil to a key to remove its key-value pair
romanNumerals["III"] = nil
println("\nAFTER ASSGNING NIL TO \"III\" TO REMOVE ITS KEY-VALUE PAIR")
println(romanNumerals)

// prints Optional(5)
// print "without forced unwrapping" and "with forced unwrapping"
println()
print("WITHOUT FORCED UNWRAPPING: ")
println(romanNumerals["V"]) // Optional because key may not exist
print("   WITH FORCED UNWRAPPING: ")
println(romanNumerals["V"]!) // Optional because key may not exist

// result of access attempt with subscripting could be nil if no item
let romanSymbol = "III"
if let decimalNumber = romanNumerals[romanSymbol] {
    println("\nDECIMAL: \(decimalNumber)")
} else {
    println("\nromanNumerals DOES NOT CONTAIN: \(romanSymbol)")
}

// use subscripting to add a new key-value pair to an empty Dictionary
var romanNumerals1: [String : Int] = [:] // new empty Dictionary
romanNumerals1["C"] = 100 // insert key-value pair into empty Dictionary
println("\nAFTER ADDING THE KEY-VALUE PAIR [\"C\" : 100] TO")
println("THE EMPTY romanNumerals1 DICTIONARY")
println("romanNumerals1 IS: \(romanNumerals1)")