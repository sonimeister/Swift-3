//
//  Rank.swift
//  Enums
//
//  Created by Angel Ricardo on 7/24/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

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
            return String(self.toRaw())
        }
    }
    
    func compare(comparison: Rank) -> Comparable {
        if self.toRaw() < comparison.toRaw() {
            return -1;
        }
        else if self.toRaw() == comparison.toRaw() {
            return 0;
        }
        else {
            return 1;
        }
    }
}
