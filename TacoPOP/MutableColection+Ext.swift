//
//  MutableColection+Ext.swift
//  TacoPOP
//
//  Created by Settar Hummetli on 7/21/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        
        if count < 2 { return }
        
        for i in startIndex..<endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - 1))) + i
            guard i != j else { continue}
            //swap(&self[i], &self[j])
            
        }
    }
}
