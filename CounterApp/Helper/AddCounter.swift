//
//  AddCount.swift
//  CounterApp
//
//  Created by Алексей Моторин on 29.09.2022.
//

import Foundation

struct AddCounter {
    private var count = 0
    
    mutating func addOne() {
        self.count += 1
    }
    
    func returnCount() -> Int {
        return count
    }

}
