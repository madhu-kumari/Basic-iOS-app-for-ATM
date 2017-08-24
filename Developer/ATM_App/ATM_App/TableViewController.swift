//
//  TableTableViewController.swift
//  ATM_App
//
//  Created by Madhu Kumari on 7/15/17.
//  Copyright © 2017 Madhu Kumari. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var transaction: Transaction!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        transaction = appDelegate?.transaction
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"atm.jpg")!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return transaction.list.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "transactionData"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        var detail = TransactionDetail()
        detail = transaction.cellAtIndex(index: indexPath.row)
        cell.textLabel?.text = detail.getDate() + " " + detail.getTime()
        //cell.detailTextLabel?.text = detail.getTime()
        return cell
        
    }
    
    
    
    
    @IBAction func add(segue: UIStoryboardSegue){
        
        if let id = segue.identifier{
            if (id == "add"){
                
                if let source = segue.source as? SeventhViewController{
                    
                    transaction.list.append(source.transactionDetail);
                    tableView.reloadData()
                    
                }
                
                
            }
            
        }
        
        
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Transaction History"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier{
            if(id == "viewDetail"){
                if let destination = segue.destination as? SixthViewController{
                    let selectedRow = self.tableView.indexPathForSelectedRow?.row
                    destination.transaction = transaction.cellAtIndex(index: selectedRow!)
                }
            }
        }
    }
    
    
}
