//
//  ToDoListItem.swift
//  realmCRUD
//
//  Created by nikolai ostonal on 2019/08/08.
//  Copyright © 2019 nikolai ostonal. All rights reserved.
//

import Foundation
import RealmSwift

class ToDoListItem: Object {
    
    
    @objc dynamic var todoTitle = ""
    @objc dynamic var created = Date() 
//    @objc dynamic var modified = ""
//    @objc dynamic var limitDate = ""
//    @objc dynamic var deleteflg = ""
    @objc dynamic var taskID = UUID().uuidString
    @objc dynamic var deleteFlag = false
//    override func primaryKey() -> String? {
//        return "taskID"
//        
//    }

}


