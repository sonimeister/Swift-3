//
//  main.swift
//  TypeAnnotation
//
//  Created by Angel Ricardo on 30/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

var welcomeMessage: String

welcomeMessage = "Hello"
print(welcomeMessage)


var friendlyWelcome = "Hello!"
friendlyWelcome = "Bounjour!"


print("The current value of friendlyWelcome is \(friendlyWelcome)")

// prints "The current value of friendlyWelcome is Bounjour!"

let minValue = UInt8.min
print(minValue)

let maxValue = UInt8.max
print(maxValue)


let twoThousand: UInt16 = 2_000

let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

print(twoThousandAndOne)


// Tuples

let http404Error = (404, "Not Found")

// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")

// prints "The status code is 404"

print("The status code is \(statusMessage)")


let (justTheStatusCode, _) = http404Error

print("The status code is \(justTheStatusCode)")

// prints "The status code is 404"

print("The status code is \(http404Error.0)")

// prints "The status code is 404"

print("The status message is \(http404Error.1)")

// prints "The status message is Not Found"



let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")

// prints "The status code is 200"

print ("The status message is \(http200Status.description)")

// prints "The status message is OK"


// Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode: Int? = 404

// serverResponseCode contains an actual Int value of 404

serverResponseCode = nil

// serverResponseCode now contains no value


var surveyAnswer: String?

// survewyAnswer is automatically set to nil

print(surveyAnswer)


if convertedNumber != nil {
    // print("converted Number has an integer value of \(convertedNumber):")
    
    // prints Optional(123)

    print("converted Number has an integer value of \(convertedNumber!):")
    
    // prints "convertedNumber has an integer value of 123."
    // The exlamation mak effectively says, "I know that this optional defintely has a value; please use it."
    // This is known as forced unwrapping of the optional's value
}


// Optional Binding

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}

// print "'123' has an integer value of 123"




let possibleString: String? = "An optional string."

let forcedString: String = possibleString! // requires an exclamation amrk

let assumedString: String! = "An implicity unwrapped optional string."

let implicitString: String = assumedString // no need for an exclamation mark


if assumedString != nil {

    print(assumedString)
    
}

// prints "An implicity unwrapped optional string."


if let definiteString = assumedString {

    print(definiteString)
    
}

// prints "An implicitly unwrapped optional string."




// Exceptions

/*
func makeASandwich() throws {
}

do {
    try makeASandwich()
    eatASandwich()

} catch Error.OutOfCleanDishes {
    washDishes()
} catch Error.MissingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
*/