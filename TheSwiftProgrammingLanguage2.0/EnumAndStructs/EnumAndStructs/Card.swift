//
//  Card.swift
//  EnumAndStructs
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

struct Card {

    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    func createDeck() -> [Card] {
        var deck = [Card]()
        
        for i in 1..<13 {
            for j in 1..<5 {
                let ranks = Rank(rawValue: i)
                let suits = Suit(rawValue: j)
                let card = Card(rank: ranks!, suit:suits!)
                deck.append(card)
            }
        }
        
        return deck
    }
}