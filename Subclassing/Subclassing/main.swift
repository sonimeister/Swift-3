//
//  main.swift
//  Subclassing
//
//  Created by Angel Ricardo on 7/22/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

println("Hello, World!")

let test = Square(sideLength: 5.2, name: "my test quare")
test.area()
println(test.simpleDescription())

var triangle = EquilateralTriangle(sideLength: 4.2, name: "a triangle")
//triangle.perimeter
triangle.perimeter = 9.9
//triangle.sideLength
println(triangle.simpleDescription())
var perimeterString = NSString(format: "%f", triangle.perimeter)
println("\(triangle.sideLength)")
println(perimeterString)