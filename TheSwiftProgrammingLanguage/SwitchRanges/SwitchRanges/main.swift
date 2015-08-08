//
//  main.swift
//  SwitchRanges
//
//  Created by Angel Ricardo on 8/4/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

let count = 9
let countedThings = "starts in the Milky Way"
var naturalCount : String
switch count {
case 0:
    naturalCount = "no"
case 1...3:
    naturalCount = "a few"
case 4...9:
    naturalCount = "several"
case 10...99:
    naturalCount = "tens of"
case 100...999:
    naturalCount = "hundreds of"
case 1000...999_999:
    naturalCount = "thousands of"
default:
    naturalCount = "millions and millions of"
}

println("There are \(naturalCount) \(countedThings).")

let somepoint = (-3, 1)
switch somepoint {
case (0, 0):
    println("(0, 0) is at the origin")
case (_, 0):
    println("(\(somepoint.0), 0) is on the x-axis")
case (0, _):
    println("(0, \(somepoint.1)) is  on the y-axis")
case (-2...2, -2...2):
    println("(\(somepoint.0), \(somepoint.1)) is inside the box")
default:
    println("(\(somepoint.0), \(somepoint.1)) is outside the box")
}


