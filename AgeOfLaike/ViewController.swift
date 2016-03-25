//
//  ViewController.swift
//  AgeOfLaike
//
//  Created by Juice Rios on 12/3/14.
//  Copyright (c) 2014 HectorRios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var imageViewField: UIImageView!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanYearsAsInt = humanYearsTextField.text.toInt()!
        var dogYears = humanYearsAsInt * 7;
        dogYearsLabel.text = "Dog Years are: \(dogYears)"
        
        humanYearsTextField.resignFirstResponder()
    }


    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let multiplier = 10.5
        let humanYearsAsString = humanYearsTextField.text
        let humanYearsAsDouble = Double((humanYearsAsString as NSString).doubleValue)
        
        var actualAge:Double
        
        if (humanYearsAsDouble > 2) {
            //Do logic here
            actualAge = (multiplier * 2) + (4 * (humanYearsAsDouble - 2))
        } else {
            actualAge = multiplier * humanYearsAsDouble
        }
        
        //update the label
        dogYearsLabel.text = "Dog Years are: \(actualAge)"
        
        humanYearsTextField.resignFirstResponder()

    }
}

