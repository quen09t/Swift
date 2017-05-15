//
//  enclos.swift
//  PetitPonaay
//
//  Created by Developer on 20/03/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import Foundation


class PoneyContainer {
    var PoneyList = [Poney]();
    func addPoney(Poney :Poney) -> Void {
        PoneyList.append(Poney)
    }
    
    func printPoneys () -> Void {
        for Item in PoneyList {
            print("Name : ",Item.name," Level : ", Item.Level)
        }
    }
    
    func getList() -> String {
        var str = ""
        for Item in PoneyList {
            str += "Name : \(Item.name) Level :  \(Item.Level) \n"
        }
        return str
    }
    
    func evolveAllPoneys () -> Void {
        for Item in PoneyList {
            var tempPoney = Item
            tempPoney.levelUp()
            PoneyList.removeFirst()
            PoneyList.append(tempPoney)
        }
    }
    
    func getLastPoney() -> Poney {
        return PoneyList.popLast()!
    }
}
