//
//  ListPaymentsTableViewController.swift
//  Expense
//
//  Created by Dylan Steck on 7/7/16.
//  Copyright © 2016 Dylan Steck. All rights reserved.
//

import UIKit
import RealmSwift


class ListPaymentsTableViewController: UITableViewController {

    //This is calling on results from notes in Realm and reloading the Table View to show the data implemented(showing the notes).
    var payments: Results<Payment>! { didSet { tableView.reloadData() } }
    override func viewDidLoad() {
        payments = RealmHelper.retrievePayments()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return payments.count }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listPaymentsTableViewCell", forIndexPath: indexPath) as! ListPaymentsTableViewCell
        
        // index path.row is 0 first time it's called, 1 the second time, etc...(it's iterating through)
        let row = indexPath.row
        
        // 2
        let payment = payments[row]
        
        // 3
        cell.paymentTypeLabel.text = payment.type
        
        // 4
        cell.paymentModificationTimeLabel.text = payment.modificationTime.convertToString()
        
        return cell
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "displayPayment" {
                print("Table view cell tapped")
                
                // 1
                let indexPath = tableView.indexPathForSelectedRow!
                // 2
                let payment = payments[indexPath.row]
                // 3
                let displayPaymentViewController = segue.destinationViewController as! DisplayPaymentViewController
                // 4
                displayPaymentViewController.payment = payment
                
            } else if identifier == "addPayment" {
                print("+ button tapped")
            }
        }
    }
    
    @IBAction func unwindToListNotesViewController(segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        
    }
    
 
    
}
