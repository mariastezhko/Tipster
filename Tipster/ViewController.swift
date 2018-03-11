//
//  ViewController.swift
//  Tipster
//
//  Created by Maria Stezhko on 3/9/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var groupSizeLabel: UILabel!
    @IBOutlet weak var tip20Total: UILabel!
    @IBOutlet weak var tip15: UILabel!
    @IBOutlet weak var tip15Total: UILabel!
    @IBOutlet weak var tip10Total: UILabel!
    @IBOutlet weak var tip20: UILabel!
    @IBOutlet weak var tip10: UILabel!
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var groupSizeSlider: UISlider!
    @IBOutlet weak var tip20PercentLabel: UILabel!
    @IBOutlet weak var tip15PercentLabel: UILabel!
    @IBOutlet weak var tip10PercentLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var clear: String = "0"
    var tip10Percent = 10
    var tip15Percent = 15
    var tip20Percent = 20
    var totalBeforeTip = ""

    @IBOutlet var buttons: [UIButton]!
    
    
    @IBOutlet weak var tipSliderSlided: UISlider!
    @IBAction func groupSliderSlided(_ sender: UISlider) {
        groupSizeLabel.text = String(Int(sender.value))
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 10
        {
            clear = "0"
            totalBeforeTip = ""
            dotButton.isEnabled = true
            totalLabel.text = String(clear)
            tip10.text = "0"
            tip15.text = "0"
            tip20.text = "0"
            tip10Total.text = "0"
            tip15Total.text = "0"
            tip20Total.text = "0"
        }
            
        else if sender.tag == 11
        {
            totalBeforeTip += "."
            totalLabel.text = String(totalBeforeTip)
            dotButton.isEnabled = false
        }
            
        else
        {
            totalBeforeTip += String(sender.tag)
            totalLabel.text = String(totalBeforeTip)
        }
    
        
    }
    
    @IBOutlet weak var billLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

