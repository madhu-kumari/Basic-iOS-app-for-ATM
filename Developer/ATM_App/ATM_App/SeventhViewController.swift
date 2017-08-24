//
//  SeventhViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/16/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {
    
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var balance: UITextField!
    
    var transactionDetail: TransactionDetail!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        transactionDetail = TransactionDetail(date: date.text!, time: time.text!, type: type.text!, balanceInfo: balance.text!, amount: amount.text!)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
