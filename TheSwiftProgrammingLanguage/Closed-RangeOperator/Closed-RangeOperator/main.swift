//
//  main.swift
//  Closed-RangeOperator
//
//  Created by Angel Ricardo on 31/08/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// function to return a numeric grade's letter equivalent
func convertToLetterGrade(grade: Int) -> String {
    var letterGrade = "Invalid grade"
    
    switch grade {
    case 90...100:
        letterGrade = "A"
    case 80...89:
        letterGrade = "B"
    case 70...79:
        letterGrade = "C"
    case 60...69:
        letterGrade = "D"
    case 0...59:
        letterGrade = "F"
    default: // grade was out of range
        break
    }
    
    return letterGrade
}

println("Letter grade for 100: \(convertToLetterGrade(100))")
println("Letter grade for 95: \(convertToLetterGrade(95))")
println("Letter grade for 89: \(convertToLetterGrade(89))")