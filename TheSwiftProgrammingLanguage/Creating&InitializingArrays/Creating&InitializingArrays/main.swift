//
//  main.swift
//  Creating&InitializingArrays
//
//  Created by Angel Ricardo on 02/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// create and display an empty Array<Int> with no-parameter initializer
let integers1 = [Int]()
println("integers1: \(integers1.description)")

// create and display an Array<Bool> with all elements set to true
let booleans = [Bool](count: 5, repeatedValue: true)
println("booleans: \(booleans.description)")

// Creating an empty Array<Int> with an empty Array Literal
// create and display an empty Array<Int> using an empty initializer list
let integers2: [Int] = [] // must specify Array's type
println("integers2: \(integers2.description)")

// type inferred as Array<Int> (i,e., [Int]) from initializer list
let integers3 = [0, 1, 2, 3, 4]
println("integers3: \(integers3.description)")

// type inferred as Array<String> (i.e., [String]) from initializer list
let strings = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
println("strings: \(strings.description)")

// creating a new Array by concatenating existing Arrays with +
let integers4 = integers3 + integers3
println("integers4: \(integers4.description)")

// concatenating an existing Array and an Array literal with +
let integers5 = integers3 + [5, 6, 7, 8, 9]
println("integer5: \(integers5.description)")