import Foundation

public extension NSDate {
    
    
    public class func dateFromString(date: String, format: String) -> NSDate {
        let formatter = NSDateFormatter()
        let locale = NSLocale(localeIdentifier: "en_US_POSIX")
        
        formatter.locale = locale
        formatter.dateFormat = format
        
        return formatter.dateFromString(date)!
    }
    //MARK: Display format
    
    class func todayInDeviceTime() -> NSDate {
        return NSDate(timeIntervalSinceNow: NSTimeInterval(NSTimeZone.localTimeZone().secondsFromGMT))
    }
    
    private func dateFormatter() -> NSDateFormatter {
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone(forSecondsFromGMT:0)
        return dateFormatter
    }
    
    class func min(date1: NSDate, date2: NSDate) -> NSDate {
        return (date1.isLower(date2, exclusive: false, normalized: false)) ? date1 : date2
    }
    
    class func max(date1: NSDate, date2: NSDate) -> NSDate {
        return (date1.isGreater(date2, exclusive: false, normalized: false)) ? date1 : date2
    }
    
    func displayString() -> String {
        let dateFormatter = self.dateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.stringFromDate(self)
    }
    
    func dateString(format: String) -> String {
        let dateFormatter = self.dateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.stringFromDate(self)
    }
    
    func dateWithOffsetInMinutes(offset: NSInteger) -> NSDate {
        return self.dateByAddingTimeInterval(NSTimeInterval(offset) * 60)
    }
    
    class var sharedNormalizeFormatter : NSDateFormatter {
        struct Static {
            static let instance = NSDateFormatter()
        }
        return Static.instance
    }
    
    class var sharedUTCCalendar: NSCalendar {
        
        struct Static {
            static var instance : NSCalendar?
            static var token : dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            let utcCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
            utcCalendar!.timeZone = NSTimeZone(forSecondsFromGMT: 0)
            Static.instance = utcCalendar
        }
        
        return Static.instance!
    }
    
    func normalize() -> NSDate {
        let dateComponents = NSDate.sharedUTCCalendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: self)
        return NSDate.sharedUTCCalendar.dateFromComponents(dateComponents)!
    }
    
    func normalizeDayHour() -> NSDate {
        let dateComponents = NSDate.sharedUTCCalendar.components([NSCalendarUnit.Second, NSCalendarUnit.Minute, NSCalendarUnit.Hour, NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: self)
        return NSDate.sharedUTCCalendar.dateFromComponents(dateComponents)!
    }
    
    func normalizedString() -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd"
        var dateString = dateFormatter.stringFromDate(self)
        dateString += "T00:00:00Z"
        return dateString
    }
    
    func timeIntervalStringSinceNow(prefix: String = "", sufix: String = "") -> String {
        let timeElapsed = abs(self.timeIntervalSinceNow) as NSTimeInterval
        var time: NSInteger = 0
        
        let secondsInMinute     = 60 as NSTimeInterval
        let secondsInHour       = secondsInMinute * 60
        let secondsInDay        = secondsInHour * 24
        let secondsInWeek       = secondsInDay * 7
        let secondsInYear       = secondsInDay * 365
        
        var string: String = ""
        
        if (timeElapsed < secondsInMinute)
        {
            return "Updated just now"
        }
        else if (timeElapsed < secondsInHour)
        {
            time = NSInteger(fmaxf(Float((timeElapsed / secondsInMinute)), 1))
            if time == 1 {
                string = "\(time) min"
            } else {
                string = "\(time) mins"
            }
        }
        else if (timeElapsed < secondsInDay)
        {
            time = NSInteger(timeElapsed / secondsInHour) //hours ago
            string = "\(time) hrs"
        }
        else if (timeElapsed < secondsInWeek)
        {
            time = NSInteger(timeElapsed / secondsInDay) //days ago
            string = "\(time) days"
        }
        else if (timeElapsed < secondsInYear)
        {
            time = NSInteger(timeElapsed / secondsInWeek) //weeks ago
            string = "\(time) weeks"
        }
        else
        {
            time = NSInteger(timeElapsed / secondsInYear) //years ago
            string = "\(time) years"
        }
        
        return "\(prefix)\(string)\(sufix)"
    }
    
    func isInBetween(fromDate date1: NSDate, toDate date2: NSDate, exclusive: Bool = false, normalized: Bool = true) -> Bool {
        
        let nself = (normalized) ? self.normalize() : self
        let ndate1 = (normalized) ? date1.normalize() : date1
        let ndate2 = (normalized) ? date2.normalize() : date2
        
        var inBetween = nself.compare(ndate1) == NSComparisonResult.OrderedDescending && nself.compare(ndate2) == NSComparisonResult.OrderedAscending
        
        if !inBetween && !exclusive {
            inBetween = nself.compare(ndate1) == NSComparisonResult.OrderedSame || nself.compare(ndate2) == NSComparisonResult.OrderedSame
        }
        
        return inBetween
    }
    
    func isGreater(date: NSDate, exclusive: Bool = false, normalized: Bool = true) -> Bool {
        let nself = (normalized) ? self.normalize() : self
        let ndate = (normalized) ? date.normalize() : date
        
        let comparisonResult = nself.compare(date)
        
        return comparisonResult == .OrderedDescending || (!exclusive && comparisonResult == .OrderedSame)
    }
    
    func isLower(date: NSDate, exclusive: Bool = false, normalized: Bool = true) -> Bool {
        
        let nself = (normalized) ? self.normalize() : self
        let ndate = (normalized) ? date.normalize() : date
        
        let comparisonResult = nself.compare(date)
        
        return comparisonResult == .OrderedAscending || (!exclusive && comparisonResult == .OrderedSame)
    }
    
    func formattQualificationsDate(qDate:NSDate?) -> String {
        if let date = qDate {
            
            let monthDay = date.dateString("MMM dd")
            let suffix = date.daySuffix()
            let year = date.dateString("yyyy")
            
            return "\(monthDay)\(suffix), \(year)"
        } else {
            return "-"
        }
    }
    
    //MARK: Date operations
    
    func numberOfDaysToDate(toDate: NSDate) -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        let startDay = calendar.ordinalityOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Era, forDate: self)
        let endDay = calendar.ordinalityOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Era, forDate: toDate)
        return max((endDay - startDay) + 1, 1)
    }
    
    func daysToDate(toDate: NSDate) -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        let startDay = calendar.ordinalityOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Era, forDate: self)
        let endDay = calendar.ordinalityOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Era, forDate: toDate)
        return startDay - endDay
    }
    
    func daysUntilDate(endDate: NSDate) -> Int
    {
        let calendar = NSCalendar.currentCalendar()
        // Return the dates to the start of the day to compare correctly
        let startDate = calendar.startOfDayForDate(self)
        let endDate = calendar.startOfDayForDate(endDate)
        let components = calendar.components([.Day], fromDate: startDate, toDate: endDate, options: [])
        return components.day
    }
    
    func numberOfMonthsToDate(toDate: NSDate) -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        let startMonth = calendar.ordinalityOfUnit(NSCalendarUnit.Month, inUnit: NSCalendarUnit.Era, forDate: self)
        let endMonth = calendar.ordinalityOfUnit(NSCalendarUnit.Month, inUnit: NSCalendarUnit.Era, forDate: toDate)
        return max(endMonth - startMonth, 1)
    }
    
    func weekStartDate() -> NSDate {
        return self.weekDates().start
    }
    
    func weekEndDate() -> NSDate {
        return self.weekDates().end
    }
    
    func monthStartDate() -> NSDate {
        return self.monthDates().start
    }
    
    func monthEndDate() -> NSDate {
        return self.monthDates().end
    }
    
    func dateWithOffsetInMonth(offset: Int) -> NSDate {
        let calendar = NSCalendar.currentUTCCalendar()
        let offsetComponents = NSDateComponents()
        offsetComponents.month = offset
        return calendar.dateByAddingComponents(offsetComponents, toDate: self, options: NSCalendarOptions())!
    }
    
    func yearStartDate() -> NSDate {
        return self.yearDates().start
    }
    
    func yearEndDate() -> NSDate {
        return self.yearDates().end
    }
    
    func day() -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        calendar.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        return calendar.components(NSCalendarUnit.Day, fromDate: self).day
    }
    
    func weekDay() -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        let dateComponent = calendar.components(NSCalendarUnit.Weekday, fromDate: self)
        return dateComponent.weekday
    }
    
    func month() -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        return calendar.components(NSCalendarUnit.Month, fromDate: self).month
    }
    
    func year() -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        return calendar.components(NSCalendarUnit.Year, fromDate: self).year
    }
    
    private func monthDates() -> (start: NSDate, end: NSDate) {
        let calendar = NSCalendar.currentUTCCalendar()
        var startOfTheMonth: NSDate?
        var endOfTheMonth: NSDate?
        var interval: NSTimeInterval = 0
        
        calendar.rangeOfUnit(NSCalendarUnit.NSMonthCalendarUnit, startDate: &startOfTheMonth, interval: &interval, forDate: self)
        
        endOfTheMonth = startOfTheMonth?.dateByAddingTimeInterval(interval-1)
        
        return (startOfTheMonth!, endOfTheMonth!)
    }
    
    private func yearDates() -> (start: NSDate, end: NSDate) {
        let calendar = NSCalendar.currentUTCCalendar()
        var startOfTheYear: NSDate?
        var endOfTheYear: NSDate?
        var interval: NSTimeInterval = 0
        
        calendar.rangeOfUnit(NSCalendarUnit.NSYearCalendarUnit, startDate: &startOfTheYear, interval: &interval, forDate: self)
        
        endOfTheYear = startOfTheYear?.dateByAddingTimeInterval(interval - 1)
        
        return (startOfTheYear!, endOfTheYear!)
    }
    
    private func weekDates() -> (start: NSDate, end: NSDate) {
        let calendar = NSCalendar.currentUTCCalendar()
        var startOfTheWeek: NSDate?
        var endOfTheWeek: NSDate?
        var interval: NSTimeInterval = 0
        
        calendar.rangeOfUnit(NSCalendarUnit.NSWeekCalendarUnit, startDate: &startOfTheWeek, interval: &interval, forDate: self)
        
        //        if (calendar.ordinalityOfUnit(NSCalendarUnit.WeekdayCalendarUnit, inUnit: NSCalendarUnit.WeekCalendarUnit, forDate: self) == 7) {
        //            startOfTheWeek = self
        //        }
        
        //Interval will have the seconds between the week start date and the same day of next week, but we actually want one day less
        //interval -= 86400;
        
        endOfTheWeek = startOfTheWeek?.dateByAddingTimeInterval(interval-1)
        
        return (startOfTheWeek!, endOfTheWeek!)
    }
    
    func daySuffix() -> String{
        return ""
        //        switch (day()) {
        //        case 1:return "st";
        //        case 21:return "st";
        //        case 31: return "st";
        //        case 2: return "nd";
        //        case 22: return "nd";
        //        case 3: return "rd";
        //        case 23: return "rd";
        //        default: return "th";
        //        }
    }
    
    func durationToDate(toDate:NSDate) -> String {
        let calendar = NSCalendar.currentUTCCalendar()
        let components = calendar.components([.Minute, .Hour], fromDate: self, toDate: toDate, options:[])
        let days = components.hour / 24
        if days > 0 {
            let res = components.hour - (days * 24)
            let resString = res > 0 ? "\(res)hs" : ""
            let daySufix = days == 1 ? "day" : "days"
            
            return "\(days) \(daySufix) \(resString)"
        }
        
        
        
        return "" + String(format: "%02d", components.hour) + "h " + String(format: "%02d", components.minute) + "'"
    }
    
    func durationInMinutesToDate(toDate:NSDate) -> Int {
        let calendar = NSCalendar.currentUTCCalendar()
        let components = calendar.components(.Minute, fromDate: self, toDate: toDate, options:[])
        return components.minute
    }
    
    func durationToDateNonFly(toDate:NSDate) -> String {
        let calendar = NSCalendar.currentUTCCalendar()
        let components = calendar.components([.Minute, .Hour], fromDate: self, toDate: toDate, options:[])
        
        var days = components.hour / 24
        let res = components.hour - (days * 24)
        
        if (res >= 23) {
            days += 1
        }
        
        var sufix: String!
        var value: Int!
        
        if (days == 0 && res == 0) {
            days = 1
        }
        
        if (days == 0) {
            value = res
            sufix = (value == 1) ? "hour" : "hours"
        } else {
            value = days
            sufix = (value == 1) ? "day" : "days"
        }
        
        return "\(value) \(sufix)"
    }
    
    class func startEndTimeString(startDate: NSDate, endDate: NSDate) -> String {
        let dateSubtitle = "\(infoViewDateFormat(startDate)) - \(infoViewDateFormat(endDate))"
        return dateSubtitle
    }
    
    class func infoViewDateFormat(date: NSDate) -> String {
        let dateFormat = "HH:mm"
        return date.dateString(dateFormat)
    }
    
    func dateByAddingDays(days: Int) -> NSDate {
        let dayComponents = NSDateComponents.init()
        dayComponents.day = days;
        let calendar = NSCalendar.currentCalendar()
        return calendar.dateByAddingComponents(dayComponents, toDate: self, options: NSCalendarOptions())!
    }
    
    func startOfNextDay() -> NSDate {
        let nextDay = self.dateByAddingDays(1)
        let calendar = NSCalendar.currentCalendar()
        return calendar.startOfDayForDate(nextDay)
    }
    
    func endOfDay() -> NSDate {
        let components = NSDateComponents()
        components.day = 1
        components.second = -1
        
        // Last moment of a given date
        let endOfDay = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self, options: NSCalendarOptions())
        return endOfDay!
    }
}

extension NSCalendar {
    
    class func currentUTCCalendar() -> NSCalendar {
        let calendar = NSCalendar.currentCalendar()
        calendar.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        return calendar
    }
    
}