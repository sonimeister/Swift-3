//
//  Suit.swift
//  EnumAndStructs
//
//  Created by Angel Ricardo on 28/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

enum Suit: Int {

    case Spades = 1
    case Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
    
        switch self {
        
        case .Spades:
            return "spades"
            
        case .Hearts:
            return "hearts"
            
        case .Diamonds:
            return "diamonds"
            
        case .Clubs:
            return "clubs"
        }
        
    }
    
    func color() -> String {
        
        switch self {
            case .Spades, .Clubs:
                return "black"
            
            case .Diamonds, .Hearts:
                return "red"
        }
    }
}