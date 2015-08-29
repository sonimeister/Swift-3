//
//  main.swift
//  Protocols
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)


var c = SimpleEnum.Base
c.adjust()
let cDescription = c.simpleDescription
print(cDescription)


// extension

extension Int: ExampleProtocol {

    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

extension Double {
    
    var absoluteValue: Double {
        return abs(self)
    }
}

print((-7.9).absoluteValue)