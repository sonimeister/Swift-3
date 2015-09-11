//
//  Box.swift
//  Box
//
//  Created by Angel Ricardo on 09/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Box type with dimensions accessed via subscripts
import Foundation

public struct Box {
    private static let names = ["length", "width", "height"]
    private var dimensions = [0.0, 0.0, 0.0]
    
    // initializer
    public init(length: Double, width: Double, height: Double) {
        dimensions[0] = length
        dimensions[1] = width
        dimensions[2] = height
    }
    
    // subscript to access dimensions by their Int indices
    public subscript(index: Int) -> Double {
        get {
            precondition(index >= 0 && index < dimensions.count)
            return dimensions[index]
        }
        set {
            precondition(index >= 0 && index < dimensions.count)
            dimensions[index] = newValue
        }
    }
    
    // subscript to access dimensions by their String names
    public subscript(name: String) -> Double {
        get {
            precondition(
                // Box.names.filter contains at least one element with the String name
                Box.names.filter({$0 == name.lowercaseString}).count == 1)
            return dimensions[nameToIndex(name)]
        }
        set {
            precondition(
                Box.names.filter({$0 == name.lowercaseString}).count == 1)
            dimensions[nameToIndex(name)] = newValue
        }
    }
    
    // utility function to convert a name into a dimensions Array index
    private func nameToIndex(name: String) -> Int {
        var i = 0
        
        while i < Box.names.count {
            if name.lowercaseString == Box.names[i] {
                return i // name is in names at position i
            }
            
            ++i
        }
        
        return -1 // precondition in subscript(name: String) prevent this
    }
}
