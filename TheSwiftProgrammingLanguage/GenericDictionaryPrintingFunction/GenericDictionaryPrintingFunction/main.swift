//
//  main.swift
//  GenericDictionaryPrintingFunction
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Dictionary with common metric weight abbreviations
let metricWeightAbbreviations = ["mg" : "milligram",
    "g" : "gram", "kg" : "kilogram", "mt" : "metric ton"]

func printDictionary<K, V>(dictionary: [K : V]) {
    for (key, value) in dictionary {
        println("\(key): \(value)")
    }
}

// call the generic display function
println("PRINT METRIC WEIGHT ABBREVIATIONS WITH")
println("GENERIC printDictionary FUNCTION")
printDictionary(metricWeightAbbreviations)