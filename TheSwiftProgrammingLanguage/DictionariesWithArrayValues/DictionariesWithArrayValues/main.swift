//
//  main.swift
//  DictionariesWithArrayValues
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let gradeBook = [
    "Susan" : [92, 85, 100], // name : Array of grades
    "Eduardo" : [83, 95, 79],
    "Azizi" : [91, 89, 82],
    "Pantipa" : [97, 91, 92]
]
var allGradesTotal = 0.0
var allGradesCount = 0

// uses reduce and a closure
for (student, grades) in gradeBook {
    let total = Double(grades.reduce(0, combine: {$0 + $1}))
    println("AVERAGE GRADE FOR \(student): " +
        String(format: "%.2f", total / Double(grades.count)))
    allGradesTotal += total
    allGradesCount += grades.count
}

// String formatting
println("AVERAGE GRADE FOR ALL STUDENTS: " +
    String(format: "%.2f", allGradesTotal / Double(allGradesCount)))