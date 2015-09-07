//
//  main.swift
//  EmployeeHierarchy
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Polymorphic Employee hierarchy
import Foundation

// create a SalariedEmployee
let salariedEmployee = SalariedEmployee(name: "John Smith",
    weeklySalary: NSDecimalNumber(string: "800:00"))!

// create a CommissionEmployee
let commissionEmployee =
CommissionEmployee(name: "Sue Jones",
    grossSales: NSDecimalNumber(string: "10000.00"),
    commissionRate: NSDecimalNumber(string: "0.06"))!

// create and test a BasePlusCommissionEmployee
let basePlusCommissionEmployee =
BasePlusCommissionEmployee(name: "Bob Lewis",
    grossSales: NSDecimalNumber(string: "5000.00"),
    commissionRate: NSDecimalNumber(string: "0.04"),
    baseSalary: NSDecimalNumber(string: "300.0"))!


// create initially empty Array of Employees
var employees: [Employee] = []

// initialize array with Employees
employees.append(salariedEmployee)
employees.append(commissionEmployee)
employees.append(basePlusCommissionEmployee)

println("\nEMPLOYEES PROCESSED POLYMORPHICALLY\n")

// display each Employee's description and earnings properties
for currentEmployee in employees {
    println(currentEmployee.description)
    
    // if BasePlusCommissionEmployee, increase base salary
    if let employee = currentEmployee as? BasePlusCommissionEmployee {
        employee.baseSalary =
            employee.baseSalary.decimalNumberByMultiplyingBy(
                NSDecimalNumber(string: "1.1"))
        print("New base salary with 10% increase is: ")
        println(formatAsCurrency(employee.baseSalary))
    }
    
    println("Earned: \(formatAsCurrency(currentEmployee.earnings))\n")
}