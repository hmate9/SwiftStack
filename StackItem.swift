//
//  StackItem.swift
//  TriAngle
//
//  Created by Mate Hegedus on 13/12/2014.
//  Copyright (c) 2014 Mate Hegedus. All rights reserved.
//

import Foundation

class StackItem<T> {
    
    private var item:T
    private var child:StackItem<T>?
    
    init(item:T, child:StackItem<T>?) {
        self.item = item
        self.child = child
    }
    
    func value() -> T {
        return item
    }
    
    func getChild() -> StackItem<T>? {
        return child
    }
    
}