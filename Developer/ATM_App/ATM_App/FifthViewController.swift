//
//  FifthViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var transaction: Transaction!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        transaction = appDelegate?.transaction
        let balance = transaction.balanceInquiry()
        
        display.text = "Your Current Balance is : \(balance)"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"atm.jpg")!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    }
