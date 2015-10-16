//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var i = 1 + 1

var s = 2 + 2

public func +(date: NSDate, hours: Int) -> NSDate {
    
    let addHours = Double(hours * 3600)
    return date.dateByAddingTimeInterval(addHours)
}

public func -(date: NSDate, hours: Int) -> NSDate {
    
    let subtractHours = Double(hours * 3600 * -1)
    return date.dateByAddingTimeInterval(subtractHours)
}

func isBeginningInFourHours(startDate: NSDate)-> Bool {
    
    let currentDate = NSDate()
    
    if (currentDate.isInBetween(fromDate: startDate - 4, toDate: startDate, exclusive: false, normalized: false)) {
        print(startDate - 4)
        return true
    }
    
    return false
}

 func hasLessThanSixHoursAsCurrentActivity(endDate: NSDate?) -> Bool {
    
    let currentDate = NSDate()
    
    if let startDateBeingCurrentActivity = endDate {
        if currentDate.isLower(startDateBeingCurrentActivity + 6, exclusive:false, normalized:false) {
            return true
        }
    }
    return false
}

// Test case isBeginningInFourHours

let startDate = NSDate.dateFromString("2015-10-15 17:22:28", format: "yyyy-MM-dd HH:mm:ss")

if isBeginningInFourHours(startDate) {
    print("YES")
} else {
    print("NO")
}

// Test case hasLessThanSixHoursAsCurrentActivity

let endDate = NSDate.dateFromString("2015-10-16 07:22:28", format: "yyyy-MM-dd HH:mm:ss")

endDate + 6
if hasLessThanSixHoursAsCurrentActivity(endDate) {
    print("YES")
}
else {
    print("NO")
}


