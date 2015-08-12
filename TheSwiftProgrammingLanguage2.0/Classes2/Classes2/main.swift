//
//  main.swift
//  Classes2
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

let circle = Circle(radiusLength: 4.2, name: "first circle")
print(circle.area())
print(circle.simpleDescription())

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

/* If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. */
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
//let optionalSquare: Square? = nil

let sideLength = optionalSquare?.sideLength
print(sideLength)