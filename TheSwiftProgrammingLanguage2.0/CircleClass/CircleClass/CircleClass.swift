//
//  CircleClass.swift
//  CircleClass
//
//  Created by Angel Ricardo on 17/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Darwin

class CircleClass {
    var radius: Double = 1
    
    init() {
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func getArea() -> Double {
        return M_PI * radius * radius
    }
    
    func getCircumference() -> Double {
        return 2 * M_PI * radius
    }
}