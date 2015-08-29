//
//  SimpleStructure.swift
//  Protocols
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}