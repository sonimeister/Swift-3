//
//  SimpleClass.swift
//  Protocols
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class."
    
    var anotherProperty: Int = 69105
    
    func adjust() {
    
        simpleDescription += " Now 100% adjusted."
    
    }
}