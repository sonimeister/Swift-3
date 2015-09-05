//
//  Time.swift
//  Failable&ConvenienceIntializers
//
//  Created by Angel Ricardo on 04/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

// Time class with failable initializers
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
    
    // designated initializar; not failable, because this initializer
    // implicitly uses the stored properties' default values
    public init() { } // empty body
    
    // failable designated initializer
    // returns nil if any argument is invalid
    public init?(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
        
        if hour < 0 || hour > 23 || minute < 0 || minute > 59 ||
            second < 0 || second > 59 {
        
            return nil // initialization failed
        }
    }
    
    // convenience initializer: hour supplied, minute and second set to 0
    public convenience init?(hour: Int) {
        self.init(hour: hour, minute: 0, second: 0)
    }
    
    // convenience initializer: hour an minute supplied, second set to 0
    public convenience init?(hour: Int, minute: Int) {
        self.init(hour: hour, minute: minute, second: 0)
    }
    
    // convenience initializaer: use values from existing Time object,
    // implicity unwrapped failable initializer; all arguments
    // are valid so failable designated initializer cannot fail
    public convenience init!(time: Time) {
        self.init(hour: time.hour, minute: time.minute,
            second: time.second)
    }
    
    // convert to String in universal-time format (HH:MM:SS)
    public var universalDescription: String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    // convert to String in standard-time format (H:MM:SS AM or PM)
    public var description: String {
        return String(format: "%d:%02d:%02d %@",
            ((hour == 0 || hour == 12) ? 12 : hour % 12),
            minute, second, (hour < 12) ? "AM" : "PM")
    }
}