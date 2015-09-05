//
//  main.swift
//  DictionaryForIn
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Iterating through a Dictionary with for...in and tuple decomposition.

let months = ["January" : 31, "February" : 29,
    "March" : 31, "April" : 30, "May" : 31, "June" : 30,
    "July" : 31, "August" : 31, "September" : 30,
    "October" : 31, "November" : 30, "December" : 31]

// print table of month numbers and names
// use for...in to iterate through months Dictionary
println("ITERATING THROUGH A DAYS-PER-MONTH-IN-A-LEAP-YEAR DICTIONARY")
println("WITH FOR...IN DECOMPOSING KEY-VALUE PAIRS INTO THE TUPLE")
println("(monthName, monthDays), THEN PRINTING THE TUPLE ELEMENTS")
for (monthName, monthDays) in months {
    println("\(monthName): \(monthDays)")
}

println()

// replace (key, value) form with tuple identifier like monthTuple,
// then say monthTuple.0 and monthTuple.1
println("ITERATING THROUGH A DAYS-PER-MONTH-IN-A-LEAP-YEAR DICTIONARY")
println("WITH FOR...IN USING A TUPLE NAME LIKE monthTuple")
println("THEN DECOMPOSING THE TUPLE WITH monthTuple.0 and monthTuple.1")
for monthTuple in months {
    println("\(monthTuple.0): \(monthTuple.1)")
}