//
//  main.swift
//  Sort
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// return true if s1 < s2
func ascendingOrder(s1: String, s2: String) -> Bool {
    return s1 < s2
}

// Array of color names to sort
let colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

println("Array colors unsorted:\n\(colors.description)\n")

// sort ascending: function ascendingOrder
let sortedColors1 =
colors.sorted(ascendingOrder)
println("Array sortedColors1:\n\(sortedColors1.description)\n")

// sort descending: fully typed closure expression
let sortedColors2 =
colors.sorted({(s1: String, s2: String) -> Bool in return s1 > s2})
println("Array sortedColors2:\n\(sortedColors2.description)\n")

// sort ascending: inferred types
let sortedColors3 = colors.sorted({s1, s2 in return s1 < s2})
println("Array sortedColors3:\n\(sortedColors3.description)\n")

// sort descending: inferred types and implicit return
let sortedColors4 = colors.sorted({s1, s2 in s1 > s2})
println("Array sortedColors4:\n\(sortedColors4.description)\n")

// sort ascending: shorthand closure arguments
let sortedColors5 = colors.sorted({$0 < $1})
println("Array sortedColors5:\n\(sortedColors5.description)\n")

// sort descending operator function >
let sortedColors6 = colors.sorted(>)
println("Array sortedColors6:\n\(sortedColors6.description)\n")

// reversing the elements of an Array
let reversed = sortedColors6.reverse()
println("Array reversed:\n\(reversed.description)")