//
//  main.swift
//  Generics
//
//  Created by Angel Ricardo on 12/08/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import Foundation

func repeatItem<Item>(item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

print(repeatItem("knock", numberOfTimes:4))


// Reimplement the Swift standard library's optional type

enum OptionalValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

print(possibleInteger)


//func anyCommonElements <T, U where T: SequenceType, U: SequenceType,
//    T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs:
//    T, _ rhs : U) -> Bool {
//        for lhsItem in lhs {
//            for rhsItem in rhs {
//                if lhsItem == rhsItem {
//                    return true
//                }
//            }
//        }
//        return false
//}

//func anyCommonElements <T, U where T: SequenceType, U: SequenceType,
//    T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs:
//    T, _ rhs : U) -> [T.Generator.Element] {
//        var result: [T.Generator.Element]
//        result = []
//        for lhsItem in lhs {
//            for rhsItem in rhs {
//                if lhsItem == rhsItem {
//                    result.append(lhsItem)
//                }
//            }
//        }
//        return result
//}

func anyCommonElements <T, U where T: SequenceType, U: SequenceType,
    T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs:
    T, _ rhs : U) -> [T.Generator.Element]? {
        var result: [T.Generator.Element]? = nil;
        result = []
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    result?.append(lhsItem)
                }
            }
        }
        return result
}

print(anyCommonElements([1,2,3], [3]))