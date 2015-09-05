//
//  main.swift
//  InsertingRemovingModiftyingKVDict
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Dictionary methods updateValue, removeValueForKey and removeAll

// Start with empty Dictionary
var countryCodes : [String : String] = [:]

// method updateValue
// add a new key-value pair with method updateValue
// handle optional return of previous value (of type String?)
if let previous = countryCodes.updateValue("za", forKey: "South Africa") {
    println("PREVIOUS VALUE FOR KEY \"South Africa\" WAS \(previous)")
} else {
    println("KEY \"South Africa\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// add a second key-value pair
// "ar" is incorrect for "Australia" should be "au" -- we'll fix below
// handle optional return of previous value (of type String?)
if let previous = countryCodes.updateValue("ar", forKey: "Australia") {
    println("PREVIOUS VALUE FOR KEY \"Australia\" WAS \(previous)")
} else {
    println("KEY \"Australia\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// update existing value (correct Australia's code from "ar" to "au"
// handle optional return of previous value (of type String?)
println("CORRECTED \"Australia\" COUNTRY CODE FROM \"ar\" TO \"aut\"")
if let previous = countryCodes.updateValue("au", forKey: "Australia") {
    println("PREVIOUS VALUE FOR KEY \"Australia\" WAS \"\(previous)\"")
} else {
    println("KEY \"Australia\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// method removeValueForKey
// remove existing key-value pair
// handle optional return (of type String?)
if let previous = countryCodes.removeValueForKey("South Africa") {
    print("KEY-VALUE PAIR \"South Africa\": ")
    println("\"\(previous)\" WAS REMOVED")
} else {
    println("KEY \"South Africa\" WAS NOT IN DICTIONARY")
}

println("countryCodes: \(countryCodes)\n")

// attempt to remove non-existing value
// handle nil return
if let previous = countryCodes.removeValueForKey("Paraguay") {
    println("KEY-VALUE PAIR \"Paraguray\": \"\(previous)\" WAS REMOVED")
} else {
    println("KEY \"Paraguay\" IS NOT IN DICTIONARY")
}

println("countryCodes: \(countryCodes)\n")

// method removeAll
countryCodes.removeAll(keepCapacity: true)
if countryCodes.isEmpty {
    println("DICTIONARY countryCodes IS EMPTY")
}

println("countryCodes: \(countryCodes)\n")