//
//  main.swift
//  EnumAndStructs
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Rank

let ace = Rank.Ace
let aceRawValue = ace.rawValue
let two = Rank.Two
print(aceRawValue)

let comparisonResult = ace.compare(two)

print(comparisonResult.rawValue)

// Suit

let hearts = Suit.Hearts

let heartsDescription = hearts.simpleDescription()
print(heartsDescription)

let heartsColor = hearts.color()
print(heartsColor)

// Card

let threeOfSpades = Card(rank: .Three, suit: .Spades)

let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)

let newDeck = threeOfSpades.createDeck()
for card in newDeck {
    print(card.simpleDescription())
}