//
//  main.swift
//  ArrayMethods
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Array of Ints to filter, map and reduce
let values = [3, 10, 6, 1, 4, 8, 2, 5, 9, 7]

println("values: \(values.description)")

// filter: even values displayed in sorted order
let evenValues = values.filter({$0 % 2 == 0}).sorted(<)
println("Even values sorted: \(evenValues.description)")

// map: square each value then sort the squares
let squaresOfValues = values.map({$0 * $0}).sorted(<)
println("Squares of values sorted: \(squaresOfValues.description)")

// reduce: sum the elements of values
let sumOfValues = values.reduce(0, combine: {$0 + $1})
println("Sum of values: \(sumOfValues)")

// filter, map and reduce: sum the squares of the even integers
let sumOfSquares =
values.filter({$0 % 2 == 0})
    .map({$0 * $0})
    .reduce(0, combine: {$0 + $1})
println("Sum of the even value squares: \(sumOfSquares)")