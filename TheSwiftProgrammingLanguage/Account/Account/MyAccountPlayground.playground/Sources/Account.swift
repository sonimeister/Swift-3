//
//  Account.swift
//  Account
//
//  Created by Angel Ricardo on 30/08/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation


// Account class with name and balance properties,
// an initializer and deposit and withdraw methods
public class Account {

    public var name: String = "" // properties mus be initialized
    
    // balance is public, but its setter can be used only in class Account
    public private(set) var balance: Double = 0.0
    
    // initializer
    public init(name: String, balance: Double) {
    
        self.name = name
        
        // validate that balance is greater than 0.0; if not,
        // property balance keeps its initial value of 0.0
        if balance > 0.0 {
            self.balance = balance
        }
    }
    
    // deposit (add) a valid amount into the Account
    public func deposit(amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            balance = balance + amount
        }
    }
    
    // withdraw (subtract) a valid amount from the Account
    public func withdraw(amount: Double) {
        // if amount is valid, and the balance will not
        // become negative, subtract it from the balance
        if amount > 0.0 {
            if balance - amount >= 0.0 {
                balance = balance - amount
            }
        }
    }
}