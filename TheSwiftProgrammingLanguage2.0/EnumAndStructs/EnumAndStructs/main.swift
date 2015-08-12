//
//  main.swift
//  EnumAndStructs
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let ace = Rank.Ace
let aceRawValue = ace.rawValue
let two = Rank.Two
print(aceRawValue)

let comparisonResult = ace.compare(two)

print(comparisonResult.rawValue)
