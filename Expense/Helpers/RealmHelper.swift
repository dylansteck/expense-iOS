//
//  RealmHelper.swift
//  Expense
//
//  Created by Dylan Steck on 7/7/16.
//  Copyright © 2016 Dylan Steck. All rights reserved.
//


import Foundation
import RealmSwift

class RealmHelper {
    
   
    
    
    static func addPayment(payment: Payment){
        let realm = try! Realm() 
        
        try! realm.write() { realm.add(payment) }
    }
    
    static func deletePayment(payment: Payment) {
        let realm = try! Realm()
        try! realm.write() { realm.delete(payment) }
    }
    
    static func updatePayment(paymentToBeUpdated: Payment, newPayment: Payment) {
        let realm = try! Realm()
        try! realm.write() {
            paymentToBeUpdated.type = newPayment.type
            paymentToBeUpdated.amount = newPayment.amount
            paymentToBeUpdated.modificationTime = newPayment.modificationTime
        }
    }
    
    static func retrievePayments() -> Results<Payment> {
        let realm = try! Realm()
        print(realm.objects(Payment))
        return realm.objects(Payment).sorted("modificationTime", ascending: false)
    }
}