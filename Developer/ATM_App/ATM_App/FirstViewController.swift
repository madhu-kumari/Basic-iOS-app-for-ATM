//
//  FirstViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
///Users/madhu/Desktop/atm.jpg

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var pin: UITextField!
    
    let atmPin = "1234"
    
    @IBAction func authenticate(_ sender: UIButton) {
        if((pin.text!)==atmPin){
            performSegue(withIdentifier: "authenticated", sender: self)
        }
        
        else{
            let alert = UIAlertController(title: "Wrong PIN", message: "Please enter correct pin", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            
            
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"atm.jpg")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

