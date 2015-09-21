//
//  main.swift
//  CircleClass
//
//  Created by Angel Ricardo on 17/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

var circleClassDefault = CircleClass()          // Sets the default radis
print("\(circleClassDefault.radius)" + "\n")    // Result is 1.0
var circleClass = CircleClass(radius: 10)       // Explicitly set the radius
print("\(circleClass.radius)" + "\n")           // Result is 10.0

var newCircleClass = circleClass                // Does not copy
newCircleClass.radius = 32                      // Only one copy, so this cange is visible...
print("\(newCircleClass.radius)" + "\n")        // ...through both references. Result is 32
print("\(circleClass.radius)" + "\n")           // Result is 32