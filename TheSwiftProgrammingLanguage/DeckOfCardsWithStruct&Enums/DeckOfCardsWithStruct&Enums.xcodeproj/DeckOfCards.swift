//
//  DeckOfCards.swift
//  DeckOfCardsWithStruct&Enums
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Darwin

public struct DeckOfCards {
    private var deck: [Card] = [] // array of Cards
    private var currentCard: Int = 0 // index of next Card to deal (0-51)
    public let numberOfCards = 52 // constant # of Cards
    
    // initializer fills the deck of Cards
    public init() {
        // populate deck with Card objects
        for face in Card.Face.values {
            for suit in Card.Suit.values {
                deck.append(Card(face: face, suit: suit))
            }
        }
    }
    
    // shuffle deck of Cards with one-pass algorithm
    public mutating func shuffle() {
        // next call to method dealCard should start at deck[0] again
        currentCard = 0;
        
        // Modern Fisher-Yates shuffle
        for first in stride(from: numberOfCards - 1, through: 1, by: -1) {
            // select a random number between 0 and first
            let second = Int(arc4random_uniform(UInt32(first + 1)))
            
            // swap current Card with randomly selected Card
            let temp = deck[first]
            deck[first] = deck[second]
            deck[second] = temp
        }
    }
    
    // deal one Card
    public mutating func dealCard() -> Card? {
        // determine whether Cards remain to be dealt
        if currentCard < deck.count {
            return deck[currentCard++] // return currentCard
        } else {
            return nil; // nil indicates that all Cards were dealt
        }
    }
}
