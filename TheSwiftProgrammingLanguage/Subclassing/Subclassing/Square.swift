//
//  Square.swift
//  Subclassing
//
//  Created by Angel Ricardo on 7/22/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}


