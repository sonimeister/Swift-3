//
//  ViewController.swift
//  Control Fun
//
//  Created by Angel Ricardo on 19/09/15.
//  Copyright © 2015 Angel Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        sliderLabel.text = "50"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderChanged(sender: UISlider) {
        let progress = lroundf(sender.value)
        sliderLabel.text = "\(progress)"
    }

}

