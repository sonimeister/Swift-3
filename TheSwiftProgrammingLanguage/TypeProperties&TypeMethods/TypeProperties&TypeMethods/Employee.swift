//
//  Employee.swift
//  TypeProperties&TypeMethods
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Employee class with a type property and type method

// global because classes do not yet support stored type properties
private var employeeCount: Int = 0

public class Employee {
    public var name: String
    
    // designated initializer
    public init(name: String) {
        self.name = name
        ++employeeCount // increment global private variable
        println("Employee init: \(name); count = \(Employee.getCount())")
    }
    
    // deinitializer
    deinit {
        --employeeCount // decrement global private variable
        println("Employee deinit: \(name); count = \(Employee.count)")
    }
    
    // computed read-only type property
    public class var count: Int {
        return employeeCount
    }
    
    // type method
    public class func getCount() -> Int {
        return self.count
    }
    
    // A compilation error occurs if a type property or type method attempts to use 
    // an instance property or instance method
}