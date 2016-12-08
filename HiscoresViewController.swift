//
//  HiscoresViewController.swift
//  Friend or Foe
//
//  Created by Plindh on 12/1/16.
//  Copyright © 2016 Plindh. All rights reserved.
//

import UIKit

class HiscoresViewController: UIViewController {
    
    @IBOutlet var hiscoresLabel: UILabel!
    @IBOutlet var bronzeLabel: UILabel!
    @IBOutlet var silverLabel: UILabel!
    @IBOutlet var goldLabel: UILabel!
    @IBOutlet var white: UILabel!
    @IBOutlet var bronze: UILabel!
    @IBOutlet var silver: UILabel!
    @IBOutlet var gold: UILabel!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        var highDefault = UserDefaults.standard
        let highDefaults = highDefault.string(forKey: "high")
        if Int(highDefaults!)! < 10 {
            white.alpha = 1.0
            hiscoresLabel.alpha = 1.0
            hiscoresLabel.text = "Your Hiscore: " + highDefaults!
        }
        else if (Int(highDefaults!)! >= 10 && Int(highDefaults!)! < 30) {
            bronze.alpha = 1.0
            bronzeLabel.alpha = 1.0
            bronzeLabel.text = "Your Hiscore: " + highDefaults!
        }
        else if (Int(highDefaults!)! >= 30 && Int(highDefaults!)! < 50) {
            silver.alpha = 1.0
            silverLabel.alpha = 1.0
            silverLabel.text = "Your Hiscore: " + highDefaults!
        }
        else if Int(highDefaults!)! >= 50 {
            gold.alpha = 1.0
            goldLabel.alpha = 1.0
            goldLabel.text = "Your Hiscore: " + highDefaults!
        }
    }
    
}
