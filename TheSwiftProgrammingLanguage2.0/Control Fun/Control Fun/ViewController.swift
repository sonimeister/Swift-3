//
//  ViewController.swift
//  Control Fun
//
//  Created by Angel Ricardo on 19/09/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var doSomethingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sliderLabel.text = "50"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }

    @IBAction func sliderChanged(sender: UISlider) {
        let progress = lroundf(sender.value)
        sliderLabel.text = "\(progress)"
    }

    @IBAction func backgroundTap(sender: UIControl) {
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }
    
    @IBAction func switchChanged(sender: UISwitch) {
        let setting = sender.on
        leftSwitch.setOn(setting, animated: true)
        rightSwitch.setOn(setting, animated: true)
    }
    
    @IBAction func toogleControls(sender: AnyObject) {
        if sender.selectedSegmentIndex == 0 {
            leftSwitch.hidden = false
            rightSwitch.hidden = false
            doSomethingButton.hidden  = true
        } else {
            leftSwitch.hidden = true
            rightSwitch.hidden = true
            doSomethingButton.hidden = false
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
    }
}

