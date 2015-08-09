//
//  main.swift
//  FirstProgram
//
//  Created by Angel Ricardo on 07/08/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

print(appleSummary)
print(fruitSummary)

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Pulic Relations"

print(shoppingList)
print(occupations)

let individualScores = [75, 43, 103, 87, 12]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"

//var optionalString: String? = nil
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
// var optionalName: String? = nil
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

let vegetable = "red pepper"

switch vegetable {

    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
        print(vegetableComment)
    
    default:
        let vegetableComment = "Everything tastes good in soup."
    
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)