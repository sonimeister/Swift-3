//
//  EquilateralTriangle.swift
//  Subclassing
//
//  Created by Angel Ricardo on 7/23/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name:String) {
        super.init(name: name)
        self.sideLength = sideLength
        numberOfSides = 4
    }
    
    var perimeter: Double {
    get{
        return 3.0 * sideLength
    }
    
    set{
        sideLength = newValue / 3.0
    }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
