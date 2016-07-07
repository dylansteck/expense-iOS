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
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.paymentTypePickerView.dataSource = self
        self.paymentTypePickerView.delegate = self
         let pickerData = ["Credit Card", "Debit Card", "Cash", "Mobile Payment", "Gift Card"]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        
//        if let payment = payment{
//            paymentTypePickerView. = payment.type
//            paymentAmountTextField.text = payment.amount
//        }
//        else {
//            paymentTypePickerView.text = ""
//            paymentAmountTextField.text = ""
//        }
    }
    //These two functions fix an error that would occur when adding the picker view data source and delegate atributes to the class.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
//    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
//        <#code#>
//    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
   
 }


