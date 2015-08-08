//
//  main.swift
//  Main
//
//  Created by Angel Ricardo on 7/24/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

import Foundation

struct Card {
    var rank: Integer
    var option: String
    
    init() {
        self.rank = 0
        self.option = "something"
    }
    
    func simpleDescription() -> String {
        return "The \(rank) of "
    }
}

var card = Card()
card.rank = 4
println(card.simpleDescription())

