//
//  main.swift
//  hasAnyMatches
//
//  Created by Angel Ricardo on 7/22/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if (condition(item)) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]

numbers = numbers.map({
    (number: Int) -> Int in
    if (number % 2 == 0) {
        return number
    }
    return 0
    })

for number in numbers {
    let formatNumber = NSString(format: "%d", number)
    println(formatNumber)
}
if(hasAnyMatches(numbers, lessThanTen)) {
    println("hayAnyMatches")
}
else {
    println("no Matches")
}
