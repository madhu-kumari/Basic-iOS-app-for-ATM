//
//  Transaction.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import Foundation

class Transaction{
    
   
    var dateFormatter1 = DateFormatter()
    var dateFormatter2 = DateFormatter()
    var currentDate:String!
    var currentTime: String!
    var balance = 0.00
    
    var list:Array<TransactionDetail>
    
    init(){
        list = [TransactionDetail]()
    }
    
   
    
    
   
    
    
    func addDeposit(amount: Double){
         balance = balance + amount
            formatTime()
        var detail = TransactionDetail(date: currentDate, time: currentTime, type: "Deposit", balanceInfo: "\(balance)", amount: "\(amount)")
        
            list.append(detail)
    }
    
    
    func withDraw(amount: Double){
        balance = balance - amount
        formatTime()
        var detail = TransactionDetail(date: currentDate, time: currentTime, type: "Withdrawal", balanceInfo: "\(balance)", amount: "\(amount)")
        
        list.append(detail)
        
    }
    
    
    func balanceInquiry()->Double{
        return balance
    }
    
    func formatTime(){
        
        dateFormatter1.dateFormat = "EEEE, MMM dd, yyyy"
        dateFormatter2.dateFormat = "HH:mm:ss a"
        let date = NSDate()
         currentDate = dateFormatter1.string(from: date as Date)
         currentTime = dateFormatter2.string(from: date as Date)

        
    }
    
    
    func cellAtIndex(index:Int)->TransactionDetail{
        return list[index]
        
    }
}
