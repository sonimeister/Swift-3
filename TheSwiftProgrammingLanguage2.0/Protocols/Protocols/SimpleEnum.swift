//
//  SimpleEnum.swift
//  Protocols
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

enum SimpleEnum : ExampleProtocol {
    
    case Base, Adjusted
    
    var simpleDescription: String { get {
        return self.getDescription()
        }
    }
    
    func getDescription() -> String{
        switch self {
            case .Base:
                return "A simple description of enum"
    
            case .Adjusted:
                return "Adjusted description of enum"
    
        }
    }

    mutating func adjust() -> Void{
        self = SimpleEnum.Adjusted
    }
}