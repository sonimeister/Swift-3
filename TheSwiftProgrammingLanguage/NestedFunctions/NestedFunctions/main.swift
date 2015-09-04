//
//  main.swift
//  NestedFunctions
//
//  Created by Angel Ricardo on 02/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// return a function that determines the ordering of two Ints
func sortOrder(#increasingOrder: Bool) -> (Int, Int) -> Bool {
    // return true if x and y are in ascending order
    func ascending(x: Int, y: Int) -> Bool {
        return x < y
    }
    
    // return true if x and y are in descending order
    func descending(x: Int, y: Int) -> Bool {
        return x > y
    }
    
    return (increasingOrder ? ascending : descending)
}

// get function for comparing Ints to see if they're in ascending order
var order = sortOrder(increasingOrder: true)

if order(7, 5) {
    println("7 and 5 are in ascending order")
} else {
    println("7 and 5 are not in ascending order")
}

// get function for comparing Ints to see if they're in descending order
order = sortOrder(increasingOrder: false)

if order(7, 5) {
    println("7 and 5 are in descending order")
} else {
    println("7 and 5 are not in descending order")
}


// External parameter names

// use interation to calculate power of base raised to the exponent
func power(base bas: Int, exponent exp: Int) -> Int {
    var result = 1;
    
    for i in 1...exp {
        result *= bas
    }
    
    return result
}

// call power with and without default parameter values
println("power(base: 10, exponent: 2) = \(power(base: 10, exponent: 2))")
println("power(base: 2, exponent: 10) = \(power(base: 2, exponent: 10))")