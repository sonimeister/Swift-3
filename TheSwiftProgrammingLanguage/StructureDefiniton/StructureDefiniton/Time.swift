//
//  Time.swift
//  StructureDefiniton
//
//  Created by Angel Ricardo on 05/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Time struct with default and memberwise initializers, and extensions
public struct Time {
    // an hout value in the range 0-23
    public var hour: Int = 0 {
        didSet {
            if hour < 0 || hour > 23 {
                hour = oldValue
            }
        }
    }
    
    // a minute value in the range 0-59
    public var minute: Int = 0 {
        didSet {
            if minute < 0 || minute > 59 {
                minute = oldValue
            }
        }
    }
    
    // a second value in the range 0-59
    public var second: Int = 0 {
        didSet {
            if second < 0 || second > 59 {
                second = oldValue
            }
        }
    }
}

// extension to struct Time containing additional initializers
extension Time {
    // initializer: hour supplied, minute and second set to 0
    public init(hour: Int) {
        self.init(hour: hour, minute: 0, second: 0)
    }
    
    // initializer: hour and minute supplied, second set to 0
    public init(hour: Int, minute: Int) {
        self.init(hour: hour, minute: minute, second: 0)
    }
}

// extension to struct Time for String representations
extension Time {
    // convert to String in universal-time format (HH:MM:SS)
    public var universalDescription: String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    // convert to String in standard-time format (H:MM:SS AM or PM)
    public var description: String {
        return String(format: "%d:%02d:%02d %@",
            ((hour == 0 || hour == 12) ? 12 : hour % 12),
            minute, second, (hour < 12 ? "AM" : "PM"))
    }
}

// extension to struct Time for adding hours, minutes or seconds to a Time
extension Time {
    // add an Int to the hour
    public mutating func addHours(increment: Int) {
        hour = (hour + increment) % 24
    }
    
    // add an Int to the minute
    public mutating func addMinutes(increment: Int) {
        // possibly increment the hour
        if minute + increment > 59 {
            addHours((minute + increment) / 60)
        }
        
        minute = (minute + increment) % 60
    }
    
    // add an Int to the second
    public mutating func addSeconds(increment: Int) {
        // possibly increment the minute
        if second + increment > 59 {
            addMinutes((second + increment) / 60)
        }
        second = (second + increment) % 60
    }
}