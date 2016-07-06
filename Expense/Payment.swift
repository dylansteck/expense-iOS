//
//  Payment.swift
//  Expense
//
//  Created by Dylan Steck on 7/6/16.
//  Copyright © 2016 Dylan Steck. All rights reserved.
//

import Foundation
import RealmSwift

class Payment: Object {
    dynamic var title = ""
    dynamic var content = ""
    dynamic var modificationTime = NSDate()
}