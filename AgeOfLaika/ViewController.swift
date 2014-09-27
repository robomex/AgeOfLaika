//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Tony Morales on 9/27/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        dogYearsLabel.text = "\(humanYearsTextField.text.toInt()! * 7)" + " Dog Years"
        dogYearsLabel.hidden = false
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
        convertButton.setTitle("Converted, Yo", forState: UIControlState.Normal)
        convertButton.backgroundColor = UIColor.yellowColor()
    }

}

