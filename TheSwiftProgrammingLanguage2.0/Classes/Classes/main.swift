//
//  main.swift
//  Classes
//
//  Created by Angel Ricardo on 11/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

var shape = Shape()
// if numberOfSides is let then shows a compile error about numberOfSides as constant
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

var namedShape = NamedShape(name: "Angel")
namedShape.numberOfSides = 7
print(namedShape.simpleDescription())
