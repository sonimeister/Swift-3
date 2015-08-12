//
//  Circle.swift
//  Classes2
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

class Circle: NamedShape {
    var radiusLength: Double
    
    init (radiusLength: Double, name:String) {
        self.radiusLength = radiusLength
        super.init(name: name)
        numberOfSides = Int.max
    }
    
    func area() -> Double {
        let pi = M_PI
        return pi * pow(radiusLength, 2)
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of length \(radiusLength)."
    }
}