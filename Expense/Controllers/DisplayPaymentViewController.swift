//
//  DisplayPaymentViewController.swift
//  Expense
//
//  Created by Dylan Steck on 7/7/16.
//  Copyright © 2016 Dylan Steck. All rights reserved.
//

import UIKit
import RealmSwift
class DisplayPaymentViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var payment: Payment?

    @IBOutlet weak var paymentTypePickerView: UIPickerView!

    @IBOutlet weak var paymentAmountTextField: UITextField!
    var pickerDataSource = ["Credit Card", "Debit Card", "Cash", "Mobile Payment", "Gift Card"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.paymentTypePickerView.dataSource = self;
        self.paymentTypePickerView.delegate = self;
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
       
//        if let payment = payment{
//            paymentTypePickerView. = payment.type
//            paymentAmountTextField.text = payment.amount
//        }
//        else {
//            paymentTypePickerView.text = ""
//            paymentAmountTextField.text = ""
//        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            } else if identifier == "Save" {
                print("Save button tapped")
            }
        }
    }
   
 }


