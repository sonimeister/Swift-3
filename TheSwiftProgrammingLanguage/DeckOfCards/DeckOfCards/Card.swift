//
//  Card.swift
//  DeckOfCards
//
//  Created by Angel Ricardo on 03/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Card class repesents a playing card
public class Card {
    private let face: String
    private let suit: String
    
    // initializer
    public init(face: String, suit: String) {
        self.face = face;
        self.suit = suit;
    }
    
    // computed property that returns String representation of Card
    public var description: String {
        get {
            return face + " of " + suit
        }
    }
}