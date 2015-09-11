//
//  main.swift
//  StringUnaryOperator
//
//  Created by Angel Ricardo on 08/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// String operators and other String methods

// custom prefix unary ! operator returns String isEmpty property's value
prefix func !(s: String) -> Bool {
    return s.isEmpty
}

// create Strings for testing String operators and methods
var s1 = "happy"
let s2 = " birthday"
var s3 = ""

// test overloaded String comparative operators
println("s1 is \"\(s1)\"; s2 is \"\(s2)\"; s3 is \"\(s3)\"")

println("\nTHE RESULTS OF COMPARING S1 AND S2")
println("s2 == s1 is \(s2 == s1)")
println("s2 != s1 is \(s2 != s2)")
println("s2 > s1 is \(s2 > s1)")
println("s2 < s1 is \(s2 < s1)")
println("s2 >= s1 is \(s2 >= s1)")
println("s2 <= s1 is \(s2 <= s1)")

// test String overloaded ! operator
println("\nTESTING CUSTOM OVERLOADED ! OPERATOR")

if !s3 { // uses custom ! prefix unary operator
    println("s3 is empty; assigning s1 to s3")
    s3 = s1
    println("s3 is \"\(s3)\"")
}

// test overloaded String concatenation operators
println("\nTESTING STRING CONCATENATION")
println("The result of s1 + s2 is the new String \"\(s1 + s2)\"")
s1 += s2 // no return value, so can't insert in a String via interpolation
println("After s1 += s2, s1 is \"\(s1)\"")

// using String's [] susbtring operator
println("\nTESTING [] FOR SUBSTRINGS")
let index = advance(s1.startIndex, 5)
let substring1 = s1[s1.startIndex ..< index]
println("s1[st1.startIndex ..< index] is \"\(substring1)\"")
let substring2 = s1[index ..< s1.endIndex]
println("s1[index ..< s1.endIndex] is \"\(substring2)\"")

// test various other String methods
println("\nTESTING OTHER STRING METHODS")
var result = s1.hasPrefix("hap") // check whether s1 starts with "hap"
println("s1.hasPrefix(\"hap\"): \(result)")
result = s1.hasSuffix("day") // check whether s1 ends with "day"
println("s1.hasSuffix(\"day\"): \(result)")

s1.removeAtIndex(index) // removes space at position index
println("After s1.removeAtIndex(index), s1 is \"\(s1)\"")

s1.insert(" ", atIndex: index) // insert a space at position index
println("After s1.insert(\" \", atIndex: index), s1 is \"\(s1)\"")

s1.append(Character("!")) // append ! to the end of s1
println("After s1.append(Character(\"!\")), s1 is \"\(s1)\"")

s1.removeAll() // remove all characters in s1
println("After s1.removeAll(), s1 is \"\(s1)\"")

let joinResult = "*".join(["1", "2", "3"]) // concatenate elements
println("\"*\".join([\"1\", \"2\", \"3\"]) is \"\(joinResult)\"")
