//
//  main.swift
//  Optionals
//
//  Created by Angel Ricardo on 15/09/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let d = NSDictionary(objects: ["Red", "Green", "Blue"], forKeys: ["0", "1", "2"])

if let dict = d as? [Int: String] { // as? retunrs nil if d is not of type [Int: String]
    print("OK")                     // As expected - use dict as normal
} else {
    print("Incorrect types")        // Executed if d is not of type [Int: String]
}

if d is [Int: String] {             // Evaluate to true if d maps Inbts to Strings
    print("Is [Int: String]\n")
} else {
    print("Incorrect types")
}