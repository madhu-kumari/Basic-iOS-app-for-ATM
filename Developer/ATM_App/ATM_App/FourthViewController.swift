//
//  FourthViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var display: UILabel!
    
    
    var transaction: Transaction!
    
    @IBAction func withDraw(_ sender: UIButton) {
        
        
        
        if let value = amount.text{
            
            if let data = Double(value.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)){
                
                let appDelegate = UIApplication.shared.delegate as? AppDelegate
                
                transaction = appDelegate?.transaction
                let balance = transaction.balanceInquiry()
                
                if(balance >= data){
                    transaction.withDraw(amount: data)
                    display.isHidden = false
                    amount.text = ""
                    
                }
                    
                else{
                    
                    let alert = UIAlertController(title: "Insufficient Balance", message: "You don't have sufficient amount to withdraw", preferredStyle: UIAlertControllerStyle.alert)
                    
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
