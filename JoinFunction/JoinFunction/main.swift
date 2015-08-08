//
//  main.swift
//  JoinFunction
//
//  Created by Angel Ricardo on 8/18/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

func join(string s1: String, toString s2: String, withJoiner joiner:String) -> String {
    return s1 + joiner + s2
}

println(join(string: "hello", toString:"world", withJoiner: ","))

func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    
    return false
}

let randomString = "aardvark"
let containsAVee = containsCharacter(string: randomString, characterToFind: "v")

if (containsAVee) {
    println("\(randomString) contains the letter v");
}
else {
    println("\(randomString) doesn't contain the letter v");
}

func joinWithDefaultParameter(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}

println(joinWithDefaultParameter(string: "hello", toString:"world"))