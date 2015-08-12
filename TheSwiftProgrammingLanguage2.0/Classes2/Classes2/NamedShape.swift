//
//  NamedShape.swift
//  Classes2
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

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