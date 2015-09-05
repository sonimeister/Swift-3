//
//  main.swift
//  Failable&ConvenienceIntializers
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// attempt to create a Time object with failable designated initializer
if let time1 = Time(hour: 99, minute: 99, second: 99) {
    println("Time is \(time1.description)")
} else {
    println("time1: initializer failed due to invalid arguments")
}

// attempt to create a Time object with a failable convenience initializer
if let time2 = Time(hour: 99) {
    println("Time is \(time2.description)")
} else {
    println("time2: initializer failed due to invalid argument")
}

// create a Time object, then use it to initialize another Time object
if let time3 = Time(hour: 16, minute: 4, second: 0) {
    println("time3 is \(time3.description)")
    
    // attempt to create a Time object with an implicity
    // unwrapped failable convenience initializer
    let time4 = Time(time: time3)
    println("time4 is \(time4.description)")
}