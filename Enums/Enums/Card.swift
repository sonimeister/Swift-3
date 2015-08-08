//
//  Card.swift
//  Enums
//
//  Created by Angel Ricardo on 7/24/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//


struct Card {
    var rank: Rank
    var suit: Suit

//    init() {
//        self.rank = Rank.Ace
//        self.suit = Suit.Diamonds
//    }
//    
//    init(rank:Rank, suit:Suit) {
//        self.rank = Rank.Ace
//        self.suit = Suit.Diamonds
//    }
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    
}


