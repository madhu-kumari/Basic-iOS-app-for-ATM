//
//  SixthViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var amount: UILabel!
    
    
    var transaction: TransactionDetail!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        date.text = transaction.date
        time.text = transaction.time
        type.text = transaction.type
        balance.text = "\(transaction.balanceInfo)"
        amount.text = transaction.amount
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
