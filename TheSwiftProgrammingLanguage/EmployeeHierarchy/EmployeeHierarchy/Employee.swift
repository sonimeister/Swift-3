//
//  Employee.swift
//  EmployeeHierarchy
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

public class Employee {
    public var name: String!
    
    // failable initializer: if name is empty, return nil
    public init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
    
    // earnings computed property
    public var earnings: NSDecimalNumber {
        return NSDecimalNumber.zero()
        
        // also we can terminate the program and output an error message
        // fatalError("Must override the earnings property")
    }
    
    // description computed property
    public var description: String {
        return name
    }
}