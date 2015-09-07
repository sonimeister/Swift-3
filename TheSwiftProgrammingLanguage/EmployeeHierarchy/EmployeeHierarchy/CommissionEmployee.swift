//
//  CommissionEmployee.swift
//  EmployeeHierarchy
//
//  Created by Angel Ricardo on 06/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

public class CommissionEmployee : Employee {
    public var grossSales: NSDecimalNumber!
    public var commissionRate: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales: NSDecimalNumber,
        commissionRate: NSDecimalNumber) {
    
            super.init(name: name) // initialize inherited property
            
            // if any arguments are invalid, return nil
            if (grossSales.compare(NSDecimalNumber.zero()) ==
                NSComparisonResult.OrderedAscending) ||
                (commissionRate.compare(NSDecimalNumber.zero()) ==
                    NSComparisonResult.OrderedAscending) {
                return nil // an initializer argument was invalid, so fail
            }
            
            self.grossSales = grossSales
            self.commissionRate = commissionRate
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        return commissionRate.decimalNumberByMultiplyingBy(grossSales)
    }
    
    // description computed property
    public override var description: String {
        return String(format:"%@: %@\n%@: %@\n%@: %@",
            "Commision Employee", super.description,
            "Gross Sales", formatAsCurrency(grossSales),
            "Commission Rate", formatAsPercent(commissionRate))
    }
}