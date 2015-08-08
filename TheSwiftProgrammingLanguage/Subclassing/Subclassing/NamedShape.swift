//
//  NamedShape.swift
//  Subclassing
//
//  Created by Angel Ricardo on 7/22/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
