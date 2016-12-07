//
//  HiscoresViewController.swift
//  Friend or Foe
//
//  Created by Plindh on 12/1/16.
//  Copyright © 2016 Plindh. All rights reserved.
//

import UIKit

class HiscoresViewController: UIViewController {
    
    var gvc = GameViewController()
    
    @IBOutlet var hiscoresLabel: UILabel!
    
     var receivedString : String!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        var highDefault = UserDefaults.standard
       hiscoresLabel.text = String(describing: highDefault)
    }
    
}
