//
//  Rank.swift
//  EnumAndStructs
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func compare(otherRank: Rank) -> NSComparisonResult {
        if self.rawValue < otherRank.rawValue {
            return NSComparisonResult.OrderedAscending
        }
        else if self.rawValue > otherRank.rawValue {
            return NSComparisonResult.OrderedDescending
        }
        else {
            return NSComparisonResult.OrderedSame
        }
    }
}
