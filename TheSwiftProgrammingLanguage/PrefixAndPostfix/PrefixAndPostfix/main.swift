//
//  main.swift
//  PrefixAndPostfix
//
//  Created by Angel Ricardo on 09/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//
// Overloading ++ and -- operators for NSDecimalNumber
import Foundation

// make NSDecimalNumber Printable for use in string interpolation
extension NSDecimalNumber : Printable {}

// add 1 to an NSDecimalNumber and return the new value
prefix func ++(inout number: NSDecimalNumber) -> NSDecimalNumber {
    number = number.decimalNumberByAdding(NSDecimalNumber.one())
    return number
}

// add 1 to an NSDecimalNumber and return the old value
postfix func ++(inout number: NSDecimalNumber) -> NSDecimalNumber {
    let temp = number.copy() as! NSDecimalNumber
    number = number.decimalNumberByAdding(NSDecimalNumber.one())
    return temp
}

// subtract 1 from an NSDecimalNumber and return the new value
prefix func --(inout number: NSDecimalNumber) -> NSDecimalNumber {
    number = number.decimalNumberBySubtracting(NSDecimalNumber.one())
    return number
}

// subtract 1 from an NSDecimalNumber and return the old value
postfix func --(inout number: NSDecimalNumber) -> NSDecimalNumber {
    let temp = number.copy() as! NSDecimalNumber
    number = number.decimalNumberBySubtracting(NSDecimalNumber.one())
    return temp
}

// demonstrate postfix increment operator
var decimalValue = NSDecimalNumber(string: "5.5")
println("decimalValue before postincrement: \(decimalValue)") // 5.5
println("postincrementing decimalValue: \(decimalValue++)") // 5.5
println("decimalValue after postincrement: \(decimalValue)\n") // 6.5

// demonstrate prefix increment operator
println("decimalValue before preincrement: \(decimalValue)") // 6.5
println("preincrementing decimalValue: \(++decimalValue)") // 7.5
println("decimalValue after preincrement: \(decimalValue)\n") // 7.5

// demonstrate postfix decrement operator
println("decimalValue before postdecrement: \(decimalValue)") // 7.5
println("postdecrementing decimalValue: \(decimalValue--)") // 7.5
println("decimalValue after postdecrement: \(decimalValue)\n") // 6.5

// demonstrate prefix decrement operator
println("decimalValue before predecrement: \(decimalValue)") // 6.5
println("predecrementing decimalValue: \(--decimalValue)") // 5.5
println("decimalValue after predecrement: \(decimalValue)") // 5.5