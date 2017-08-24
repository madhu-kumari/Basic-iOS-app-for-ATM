//
//  TransactionDetail.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import Foundation

class TransactionDetail {
    
    var date:String
    var time: String
    var type: String
    var balanceInfo: String
    var amount: String
    
    init(date: String, time: String, type: String, balanceInfo: String, amount: String) {
        self.date = date
        self.time = time
        self.type = type
        self.balanceInfo = balanceInfo
        self.amount = amount
    }
    
    
    init() {
        self.date = ""
        self.time = ""
        self.type = ""
        self.balanceInfo = ""
        self.amount = ""
    }
    
    
    func getDate()->String{
        return date
        
    }

    
    func getTime()->String{
        return time
    }
    
}
