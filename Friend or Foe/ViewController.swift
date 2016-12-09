//
//  ViewController.swift
//  Friend or Foe
//
//  Created by Plindh on 11/30/16.
//  Copyright © 2016 Plindh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var friendOrFoeImage: UIImageView!
    
    var didPlayTap = false

    override func viewDidLoad() {
        super.viewDidLoad()
        let highDefault = UserDefaults.standard
        let highDefaults = highDefault.string(forKey: "high")
        if highDefaults != nil {
            didPlayTap = true
        }
    }
    
    @IBAction func play(_ sender: UIButton) {
        didPlayTap = true
    }
    
    @IBAction func hiscores(_ sender: UIButton) {
        if didPlayTap == false {
            makeAlert(title: "Wait!", message: "You must play a full 45 second game and receive a score in order to view Hiscores")
        }
        else if didPlayTap == true {
        self.performSegue(withIdentifier: "hiseg", sender: nil)
        }
    }
    
    
    
    
    func makeAlert (title: String, message: String) {
        let alert = UIAlertController(title:"Wait!", message:"You must play a full 45 second game and receive a score in order to view Hiscores", preferredStyle:UIAlertControllerStyle.alert); alert.addAction(UIAlertAction(title:"OK",style: UIAlertActionStyle.default, handler:nil))
        self.present(alert, animated:true, completion:nil)
}

}
