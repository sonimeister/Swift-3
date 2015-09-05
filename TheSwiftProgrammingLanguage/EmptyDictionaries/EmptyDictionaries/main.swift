//
//  main.swift
//  EmptyDictionaries
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Declaring and printing empty Dictionary objects.

// declare a mutable empty Dictionary with initializer syntax
var countryCodes1 = [String : String]()

// declare a mutable empty Dictionary with an empty dictionary literal
var countryCodes2: [String : String] = [:]

// declare empty Dictionary with a minimumCapacity
var countryCodes3 = [String : String] (minimumCapacity: 10) // no literal

// following is an invalid declaration because type inference fails
// var countryCodes4 = [:] // would fail: cannot infer type of Dictionary

// print each of the empty Dictionary objects
println("PRINT EMPTY DICTIONARY OBJECTS")
println("countryCodes1 is \(countryCodes1)")
println("countryCodes2 is \(countryCodes2)")
println("countryCodes3 is \(countryCodes3)")