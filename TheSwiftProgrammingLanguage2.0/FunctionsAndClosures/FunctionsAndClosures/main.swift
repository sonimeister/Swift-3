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

greet("Bob", day: "Tuesday")

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
print(sumOf(42, 597, 12))

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum / numbers.count
}

print(averageOf(42, 597, 12))

// Nested functions

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

print(returnFifteen())

// Functions are first-class type. A function can return another function

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
print(increment(7))

// A function can take another function as one of its arguments

func hasAnyMatches(list: [Int], condition: Int -> Bool) ->
    Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        
        return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]

print(hasAnyMatches(numbers, condition: lessThanTen))

let arrayMap = numbers.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
})

print(arrayMap)



let mappedNumbers = numbers.map({ number in 3 * number })

print(mappedNumbers)

/* You can refer to parameters by number instead of by name- this approach is
especially useful in very short closures. A closure passed as the last 
argument to a function can appear immediately after the parentheses. When
a closure is the only argument to a function, you can omit the parentheses
entirely. */

let sortedNumbers = numbers.sort{ $0 > $1 }

print(sortedNumbers)




