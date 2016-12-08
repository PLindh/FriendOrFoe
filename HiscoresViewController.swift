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
    @IBOutlet var w: UIView!
    @IBOutlet var b: UIView!
    @IBOutlet var s: UIView!
    @IBOutlet var g: UIView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        let highDefault = UserDefaults.standard
        let highDefaults = highDefault.string(forKey: "high")
        if Int(highDefaults!)! < 10 {
            setOpacity(x: w, ex: white, xLabel: hiscoresLabel)
        }
        else if (Int(highDefaults!)! >= 10 && Int(highDefaults!)! < 30) {
            setOpacity(x: b, ex: bronze, xLabel: bronzeLabel)
        }
        else if (Int(highDefaults!)! >= 30 && Int(highDefaults!)! < 50) {
            setOpacity(x: s, ex: silver, xLabel: silverLabel)
        }
        else if Int(highDefaults!)! >= 50 {
           setOpacity(x: g, ex: gold, xLabel: goldLabel)
        }
    }
    
    func setOpacity (x: UIView, ex: UILabel, xLabel: UILabel) {
        let highDefault = UserDefaults.standard
        let highDefaults = highDefault.string(forKey: "high")
        x.alpha = 1.0
        ex.alpha = 1.0
        xLabel.alpha = 1.0
        xLabel.text = "Your Hiscore: " + highDefaults!
    }
    
}
