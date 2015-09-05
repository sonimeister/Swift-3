//
//  main.swift
//  Dictionary
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Declaring and printing mutable and immutable Dictionary objects.

// declare immutable Dictionary with traditional generic type syntax
// and a Dictionary literal with one key-value pair
let countryCodes1: Dictionary<String, String> = ["Argentina" : "ar"]

// declare mutable Dictionary with shorthand type syntax
// and a Dictionary literal with mutiple key-value pairs
var countryCodes2: [String : String] = ["Finland" : "fi",
    "South Africa" : "za", "Nepal" : "np"]

// declare mutable Dictionary with type inference and a Dictionary literal
var countryCodes3 = ["Argentina" : "ar"] // prefer this approach

// print with Dictionary description property (from Printable protocol)
// Printable protocol's description propery returns String
// invoke description propery explicity
println("PRINT DICTIONARIES USING THE DESCRIPTION PROPERTY EXPLICITLY")
println("countryCodes1: \(countryCodes1.description)")
println("countryCodes2: \(countryCodes2.description)")
println("countryCodes3: \(countryCodes3.description)")

println()

// invoke description property implicitly
println("PRINT DICTIONARIES USING THE DESCRIPION PROPERTY IMPLICITLY")
println("countryCodes1: \(countryCodes1)")
println("countryCodes2: \(countryCodes2)")
println("countryCodes3: \(countryCodes3)")
