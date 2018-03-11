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
    @IBOutlet weak var tip15: UILabel!
    @IBOutlet weak var tip20Total: UILabel!
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
    
    var totalBeforeTip = ""
    var tip10Percent = 10
    var tip15Percent = 15
    var tip20Percent = 20
    
    
    @IBAction func tipSliderSlided(_ sender: UISlider) {
        
        let groupSize = Double(groupSizeLabel.text!) ?? 1
        let tip10Amount = (Double(totalBeforeTip) ?? 0)*(Double(Int(sender.value + 10))/100)
        let tip15Amount = (Double(totalBeforeTip) ?? 0)*(Double(Int(sender.value + 15))/100)
        let tip20Amount = (Double(totalBeforeTip) ?? 0)*(Double(Int(sender.value + 20))/100)
        
        tip10PercentLabel.text = String(Int(sender.value + 10)) + "%"
        tip10.text = String(round(100*tip10Amount/groupSize)/100)
        if Double(totalBeforeTip) ?? 0 > 0
        {
            let tip10TotalTemp = (tip10Amount) + Double(totalBeforeTip)!
            tip10Total.text = String(round(100*tip10TotalTemp)/100)
        }
        tip15PercentLabel.text = String(Int(sender.value + 15)) + "%"
        tip15.text = String(round(100*tip15Amount/groupSize)/100)
        if Double(totalBeforeTip) ?? 0 > 0
        {
            let tip15TotalTemp = (tip15Amount) + Double(totalBeforeTip)!
            tip15Total.text = String(round(100*tip15TotalTemp)/100)
        }
        tip20PercentLabel.text = String(Int(sender.value + 20)) + "%"
        tip20.text = String(round(100*tip20Amount/groupSize)/100)
        if Double(totalBeforeTip) ?? 0 > 0
        {
            let tip20TotalTemp = (tip20Amount) + Double(totalBeforeTip)!
            tip20Total.text = String(round(100*tip20TotalTemp)/100)
        }

    }
    
    
    @IBAction func groupSliderSlided(_ sender: UISlider) {
        groupSizeLabel.text = String(Int(sender.value))
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 10
        {
            totalBeforeTip = ""
            totalLabel.text = "0"
            tip10.text = "0"
            tip15.text = "0"
            tip20.text = "0"
            tip10Total.text = "0"
            tip15Total.text = "0"
            tip20Total.text = "0"
            dotButton.isEnabled = true
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
        tip10PercentLabel.text = String(tip10Percent) + "%"
        tip15PercentLabel.text = String(tip15Percent) + "%"
        tip20PercentLabel.text = String(tip20Percent) + "%"
        groupSizeLabel.text = "1"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

