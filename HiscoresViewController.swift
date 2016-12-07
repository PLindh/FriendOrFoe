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
    
     override func viewDidLoad() {
        super.viewDidLoad()
        var highDefault = UserDefaults.standard
        let highDefaults = highDefault.string(forKey: "high")
       hiscoresLabel.text = highDefaults
    }
    
}
