//
//  SalariedEmployee.swift
//  EmployeeHierarchy
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

public class SalariedEmployee : Employee {
    public var weeklySalary: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, weeklySalary: NSDecimalNumber) {
        super.init(name: name) // initialized inherited property
        
        // if any arguments are invalid, return nil
        if weeklySalary.compare(NSDecimalNumber.zero()) ==
            NSComparisonResult.OrderedAscending {
            return nil // an initializer argument was invalid, so fail
        }
        
        self.weeklySalary = weeklySalary
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        return weeklySalary
    }
    
    // description computed property
    public override var description: String {
        return String(format: "%@: %@\n%@: %@",
            "Salaried Employee", super.description,
            "Weekly Salary", formatAsCurrency(weeklySalary))
    }
}