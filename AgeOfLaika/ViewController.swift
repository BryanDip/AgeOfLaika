//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Bayan on 6/22/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yearsText: UITextField!
    
    @IBOutlet weak var yearsOutput: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(_ sender: UIButton) {
        let dogYears = Int(yearsText.text!)! * 7
        yearsOutput.text = "\(dogYears) dog years"
        yearsOutput.isHidden = false
        yearsText.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYears(_ sender: UIButton) {
        //10.5 dog years per human year for the first 2 years, then 4 dog years per human year for each year after.
        
        let realDogYearsInput = Double(yearsText.text!)!
        
        var realDogYears: Double
        
        if realDogYearsInput < 2 {
            realDogYears = realDogYearsInput * 10.5
        }
        else {
            realDogYears = (2 * 10.5) + ((realDogYearsInput - 2) * 4)
        }
        
        yearsOutput.text = "\(realDogYears) dog years"
        yearsOutput.isHidden = false
        yearsText.resignFirstResponder()
    }
    
    
    

}

