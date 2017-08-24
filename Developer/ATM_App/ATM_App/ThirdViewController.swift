//
//  ThirdViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var display: UILabel!
    
    
    
    var transaction: Transaction!
    
    @IBAction func deposit(_ sender: UIButton) {
        
        if let value = amount.text{
            
            if let data = Double(value.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)){
                
                if(data >= 0){
                    
                    let appDelegate = UIApplication.shared.delegate as? AppDelegate
                    
                    transaction = appDelegate?.transaction
                    transaction.addDeposit(amount: data)
                    
                    
                    display.isHidden = false
                    amount.text = ""
                    
                }
                
                else{
                    
                    let alert = UIAlertController(title: "Negative Balance", message: "Please enter correct balance", preferredStyle: UIAlertControllerStyle.alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                    
                }
            }
            else{
                
                let alert = UIAlertController(title: "Wrong Value", message: "Please enter digit", preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            
        }
        
        else{
            
            let alert = UIAlertController(title: "Value Not Entered", message: "Please enter some value", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        display.isHidden = true
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"atm.jpg")!)

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
