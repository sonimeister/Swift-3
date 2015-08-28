//
//  main.swift
//  Enum_AssociatedValues
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
    
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}

print(success)
print(failure)