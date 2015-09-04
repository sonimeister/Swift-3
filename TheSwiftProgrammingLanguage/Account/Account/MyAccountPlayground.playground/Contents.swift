//: Playground - noun: a place where people can play

import Cocoa

// create and configure an NSNumberFormatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

// function to return String representation of an Account's information
func formatAccountString(account: Account) -> String {
    return account.name + "'s balance: " + formatter.stringFromNumber(account.balance)!
}

// create two Account objects
let account1 = Account(name: "Jane Green", balance: 50.00)
let account2 = Account(name: "John Blue", balance: -7.53)

// display initial balance of each Account
println(formatAccountString(account1))
println(formatAccountString(account2))

// test Account's desposit method
var depositAmount = 25.53

println("\ndepositing " + formatter.stringFromNumber(depositAmount)! + " into account1\n")
account1.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

depositAmount = 123.45
println("\ndepositing " + formatter.stringFromNumber(depositAmount)! + " into account2\n")

println(formatAccountString(account1))
println(formatAccountString(account2))


// test Account's withdraw method
var withdrawalAmount = 14.27

println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! + " from account1\n")
account1.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

withdrawalAmount = 100.00
println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! + " from account2\n")
account2.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))