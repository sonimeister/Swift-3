//
//  main.swift
//  Box
//
//  Created by Angel Ricardo on 09/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//
// Using subscripts to access Box dimensions
import Foundation

var box = Box(length: 3.0, width: 4.0, height: 5.0) // create a Box

// show dimensions with Int subscript
println("CREATED A BOX WITH THE FOLLOWING DIMENSIONS")
println("box[0] = \(box[0])")
println("box[1] = \(box[1])")
println("box[2] = \(box[2])")

// set a dimension with the Int subscript
println("\nSetting box[0] to 10.0")
box[0] = 10.0

// set a dimension with the String subscript
println("Setting box[\"width\"] to 5.0")
box["width"] = 5.0

// show dimensions with String subscript
println("\nBOX DIMENSIONS AFTER SETTING LENGTH AND WIDTH")
print("box[\"length\"] = ")
println(box["length"])
print("box[\"width\"] = ")
println(box["width"])
print("box[\"height\"] = ")
println(box["height"])