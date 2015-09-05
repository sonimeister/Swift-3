//
//  main.swift
//  TypeProperties&TypeMethods
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

// Demonstrting type method and properties

// function that creates two Employees
func createEmployees() {
    // create two Employees; count should be 2
    let e1 = Employee(name: "Susan Baker")
    let e2 = Employee(name: "Bob Blue")
    
    // show that Employee count is 2 after creating two Employees
    println("\nEMPLOYEES AFTER INSTANTIATION")
    println("  via type property: \(Employee.count)")
    println("  via type method: \(Employee.getCount())\n")
}

// show that Employee count is 0 before creating Employees
println("EMPLOYEES BEFORE INSTANTIATION")
println("  via type property: \(Employee.count)")
println("  via type method: \(Employee.getCount())\n")

createEmployees()

// show that count is 0 after Employees' references counts go to 0
println("\nEMPLOYEES AFTER ARC")
println("  via type property: \(Employee.count)")
println("  via type method: \(Employee.getCount())")