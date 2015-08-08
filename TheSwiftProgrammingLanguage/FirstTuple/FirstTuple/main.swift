//
//  main.swift
//  FirstTuple
//
//  Created by Angel Ricardo on 7/22/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

func getGasPrices() -> (a: Double,b: Double,c: Double) {
    return (3.59, 3.69, 3.79)
}

println("Hello, World!")
let numbers = getGasPrices();
println("value of a:\(numbers.a) of b:\(numbers.b) of c:\(numbers.c)")

