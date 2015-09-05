//
//  Time.swift
//  Extensions
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Time class with extensions
public class Time {
    // an hour value in the range 0-23
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
    
    // designated initializer
    public init() {} // empty body
    
    // designated initializer
    public init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
}

// extension to class Time containing convenience initializers
extension Time {
    // convenience initializer: hour supplied, minute and second set to 0
    public convenience init(hour: Int) {
        self.init(hour: hour, minute: 0, second: 0)
    }
    
    // convenience initializer: hour and minute supplied, second set to 0
    public convenience init(hour: Int, minute: Int) {
        self.init(hour: hour, minute: minute, second: 0)
    }
    
    // convenience initalizer: use values from existing Time object
    public convenience init(time: Time) {
        self.init(hour: time.hour, minute: time.minute,
            second: time.second)
    }
}

// extension for String representations of a Time
extension Time {
    // convert to String in universal-time format (HH:MM:SS)
    public var universalDescription: String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    // convert to String in standard-time format (H:MM:SS AM or PM)
    public var description: String {
        return String (format: "%d:%02d:%02d %@",
            ((hour == 0 || hour == 12) ? 12 : hour % 12),
            minute, second, (hour < 12 ? "AM" : "PM"))
    }
}