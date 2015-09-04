//
//  DeckOfCards.swift
//  DeckOfCards
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// DeckOfCards class represents a deck of playing cards
import Darwin

public class DeckOfCards {
    private var deck: [Card] = [] // array of Cards
    private var currentCard: Int = 0 // index of next Card to del (0-51)
    public let numberOfCards = 52 // constant # of Cards
    
    // initializer fills the deck of Cards
    public init() {
        let faces = ["Ace", "Deuce", "Three", "Four", "Five", "Six",
        "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
        let suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
        
        // pupulate deck with Card objects
        for index in 0 ..< numberOfCards {
            deck.append(
                Card(face: faces[index % 13], suit: suits[index / 13]))
        }
    }
    
    // shuffle deck of Cards with one-pass algorithm
    public func shuffle() {
        // next call to method dealCard should start at deck[0] again
        currentCard = 0;
        
        // Modern FIsher-Yates shuffle
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
    public func dealCard() -> Card? {
        // determine whether Cards remain to be dealt
        if currentCard < deck.count {
            return deck[currentCard++] // return current Card
        } else {
            return nil; // nil indicates that all Cards were dealt
        }
    }
}
