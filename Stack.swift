//
//  Stack.swift
//  TriAngle
//
//  Created by Mate Hegedus on 13/12/2014.
//  Copyright (c) 2014 Mate Hegedus. All rights reserved.
//

import Foundation

public class Stack<T> {
    private var top:StackItem<T>? = nil
    private var size = 0
    
    public init(top:T) {
        self.top = StackItem(item: top, child: nil)
        size = 1
    }
    
    public init() {}
    
    public func push(item:T) {
        var stackItem = StackItem(item: item, child: top)
        top = stackItem
        size++
    }
    
    public func pop() -> T? {
        var result = top?.value()
        top = top?.getChild()
        if (size > 0) {
            size--
        }
        return result
    }
    
    public func peek() -> T? {
        return top?.value()
    }
    
    public func getSize() -> Int {
        return size
    }
    
    public func isEmpty() -> Bool {
        return size == 0
    }
}