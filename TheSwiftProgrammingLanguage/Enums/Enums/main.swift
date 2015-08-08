//
//  main.swift
//  Enums
//
//  Created by Angel Ricardo on 7/24/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

func deck() -> Card[] {
    var cards = Card[]()
    for i in 0..4 {
        for j in 1..14 {

//            var rank! = Rank.fromRaw(j)
//            var suit! = Suit.fromRaw(i)
            var card = Card(rank:Rank.fromRaw(j)!, suit:Suit.fromRaw(i)!)
            cards += card
        }
    }
    return cards;
}

let ace = Rank.Queen
let aceRawValue = ace.simpleDescription()
println(ace.compare(Rank.Queen))

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
println(hearts.color())


let threeOfSpades = Card(rank: .Three, suit:.Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
println(threeOfSpadesDescription)

let fullDeck = deck()
for card in fullDeck {
    println(card.simpleDescription())
}

