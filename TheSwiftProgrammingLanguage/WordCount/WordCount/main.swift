//
//  main.swift
//  WordCount
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Tokenizing a string and producing word counts
import Foundation

// format a String left and producing word counts
func padString(string: String, # width: Int) -> String {
    let spaces: Int = width - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return string + padding
}

let sentence = "this is a sample sentence with several words " +
    "this is another sample sentence with some different words"

// tokenize the sentence string
let words = sentence.componentsSeparatedByString(" ")

// summarize word counts
var wordCounts: [String : Int] = [:] // empty Dictionary

// summarize ocurrences of each word
for word in words {
    // if word in Dictionary, increment count; otherwise, add it
    if let count = wordCounts[word] {
        wordCounts[word] = count + 1 // increment countr
    } else {
        wordCounts[word] = 1 // add word to Dictionary
    }
}

// display the wordCounts contents
println("THE STRING \"\(sentence)\" CONTAINS:\n")
println(padString("WORD", width: 15) + "COUNT")

for (word, count) in wordCounts {
    println(String(format: "%@%5d", padString(word, width: 15), count))
}

println("\nNUMBER OF KEYS IN WORDCOUNTS DICTIONARY: \(wordCounts.count)")