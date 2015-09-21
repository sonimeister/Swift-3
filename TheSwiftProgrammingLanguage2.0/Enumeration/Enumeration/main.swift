//
//  main.swift
//  Enumeration
//
//  Created by Angel Ricardo on 15/09/15.
//  Copyright (c) 2015 Angel Ricardo. All rights reserved.
//

import Foundation

enum Status {
    case OK
    case ERROR(String)
}

let result = Status.ERROR("Network connection rejected")

switch (result) {
case .OK:
    print("Success!")
case .ERROR(let message):
    print("Ooop: \(message)")
}