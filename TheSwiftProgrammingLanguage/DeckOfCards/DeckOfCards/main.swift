//
//  main.swift
//  DeckOfCards
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// format a String left aligned in a field
func formatString(var string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    string += padding
    return string
}

var myDeckOfCards = DeckOfCards()
myDeckOfCards.shuffle() // place Cards in random order

// deal all 52 Cards with for...in
for i in 1 ... myDeckOfCards.numberOfCards {
    if let card = myDeckOfCards.dealCard() { // deal and unwrap Card
        print(formatString(card.description, 19)) // display Card
        
        if (i % 4 == 0) { // move to next line after every fourth card
            println()
        }
    }
}

println()
myDeckOfCards.shuffle()

// deal all 52 Cards with while
var i = 0

while let card = myDeckOfCards.dealCard() { // deal and unwrap Card
    ++i
    print(formatString(card.description, 19)) // display Card
    
    if (i % 4 == 0) { // move to next line after every fourth card
        println()
    }
}