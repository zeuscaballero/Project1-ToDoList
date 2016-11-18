//
//  DataController.swift
//  w4d2 - ToDoList - JesusCaballero
//
//  Created by zeus on 11/15/16.
//  Copyright © 2016 appzeus. All rights reserved.
//

import Foundation
import UIKit

var toDoList = [ItemList]()


class ItemList {
    var title = String()
    var item = [Item]()

    init(title: String){
        self.title = title
    }
}


class Item {
    var title: String
    var description: String
    
    
    init (title: String, description: String) {
        self.title = title
        self.description = description
    }
}
