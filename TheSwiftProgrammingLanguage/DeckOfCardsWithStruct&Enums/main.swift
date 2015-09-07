//
//  main.swift
//  DeckOfCardsWithStruct&Enums
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Card shuffling and dealing.

// format a String lef aligned in a field
func formatString(var string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    string + padding
    return string
}

var myDeckOfCards = DeckOfCards()

myDeckOfCards.shuffle() // place Cards in random order
println("SHUFFLED DECK OF CARDS")
var i = 0 // used to determine when to start new output line

while let card = myDeckOfCards.dealCard() { // deal and unwrap Card
    ++i
    print(formatString(card.description, 19)) // display Card
    
    if (i % 4 == 0) { // move to next line after every fourth card
        println()
    }
}

println("\nDESCRIPTIONS AND RAW VALUES OF THE FACE ENUM CONSTANTS")
for face in Card.Face.values {
    println("\(face.description) = \(face.rawValue)")
}

println("\nRAW VALUES OF THE SUIT ENUM CONSTANTS")
for suit in Card.Suit.values {
    println("\(suit.rawValue)")
}

println("\nCREATING FACE FROM RAW VALUES")
for i in 1...14 {
    if let face = Card.Face(rawValue: i) {
        println("\(i) is \(face.description)'s raw value")
    } else {
        println("There is no Face constant for the raw value \(i)")
    }
}

var randomCard: Card
randomCard.suit = Suit.Hearts