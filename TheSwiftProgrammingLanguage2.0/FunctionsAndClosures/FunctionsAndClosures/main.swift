//
//  main.swift
//  FunctionsAndClosures
//
//  Created by Angel Ricardo on 10/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

print(greet("Bob", day: "Tuesday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])

print(statistics.sum)
print(statistics.0)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

print(sumOf())
print(sumOf(42,597,12))