//
//  main.swift
//  GenericStack
//
//  Created by Angel Ricardo on 08/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// test push method with Stack<Double>
func testPush<T>(inout stack: Stack<T>, values: [T], name: String) {
    print("Pushing elements onto \(name): ")
    
    // push elements
    for value in values {
        print("\(value) ")
        stack.push(value)
    }
    
    println()
}

// test pop method with Stack<Double>
func testPop<T>(inout stack: Stack<T>, name: String) {
    print("Popping elements from \(name): ")
    
    // remove all elements from Stack
    while let value = stack.pop() {
        println("\(value)")
    }
    
    println()
}

// Create and test a Stack<Double>
let doubles = [1.1, 2.2, 3.3]
var doubleStack = Stack<Double>()
testPush(&doubleStack, doubles, "doubleStack")
testPop(&doubleStack, "doubleStack")

// Create and test a Stack<String>
let strings = ["apple", "banana", "cherry"]
var stringStack = Stack<String>()
testPush(&stringStack, strings, "stringStack")
testPop(&stringStack, "stringStack")