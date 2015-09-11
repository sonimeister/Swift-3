//
//  main.swift
//  CustomOperator
//
//  Created by Angel Ricardo on 09/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Creating an exponentiation operator for type Int

// declare new infix ** operator for exponentiation; precedence of 160 is
// higher than * and /; associativity is none
infix operator ** {precedence 160 associativity none}

// define operator function that implements the new ** operator for Ints
func **(base: Int, exponent: Int) -> Int {
    precondition(exponent >= 0, "exponent must be >= 0")
    
    if exponent == 0 {
        return 1
    } else {
        var result = 1
        
        for _ in 1...exponent {
            result *= base
        }
        
        return result
    }
}

// define operator function that implements ** operator for integer types
func **<T: SignedIntegerType>(base: T, exponent: Int) -> T {
    precondition(exponent >= 0, "exponent must be >= 0")
    
    if exponent == 0 {
        return T(1)
    } else {
        var result = T(1)
        
        for _ in 1...exponent {
            result *= base
        }
        
        return result
    }
}

// testing the custom infix exponentiation operator **
println("2 ** 0 = \(2 ** 0)")
println("2 ** 10 = \(2 ** 10)")


// testing the custom infix exponentiation operator **
let intValue = 2
let int64Value = Int64(10)

println("intValue ** 0 = \(intValue ** 0)")
println("int64Value ** 10 = \(int64Value ** 10)")