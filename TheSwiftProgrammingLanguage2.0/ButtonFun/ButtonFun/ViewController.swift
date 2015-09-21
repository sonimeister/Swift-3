//
//  ViewController.swift
//  ButtonFun
//
//  Created by Angel Ricardo on 18/09/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func buttonPressed(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        let plainText = "\(title) button pressed"
//        statusLabel.text = plainText
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [
            NSFontAttributeName: UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ]
        let nameRange = (plainText as NSString).rangeOfString(title)
        styledText.setAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
    }
    
}

