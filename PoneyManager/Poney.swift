//
//  Poney.swift
//  PetitPonaay
//
//  Created by Developer on 20/03/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import Foundation

struct Poney {
    var level = 1
    var name = "dada"
    
    mutating func levelUp() -> Void {
        self.level += 1
    }
    
    
    init?(name:String, level: Int){
        self.name = name
        self.level = level
    }
    
    
}
