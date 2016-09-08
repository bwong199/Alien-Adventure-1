//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
//        var baseValueItem : UDItem? = nil
//        var allItemValue: [UDItem] = []
//        var lowestValueItem : Int = 0
//        
//        if let firstValue = inventory.first {
//            lowestValueItem = firstValue.baseValue
//        }
//        
//        for x in inventory {
//            print(x.baseValue)
//            if (x.baseValue < lowestValueItem){
//                    baseValueItem = x
//            }
//        }
//        
//        
//        print("BaseValue " + String(baseValueItem?.baseValue)  )
//        print("BaseValue " + String(baseValueItem?.baseValue)  )
//        
//        return baseValueItem
        
        var cheapestItem: UDItem? = nil
        if inventory.count == 0  {
            return nil }
        else {
            cheapestItem = inventory[0]
            for item in inventory {
                if let unwrappedItem = cheapestItem {
                    if item.baseValue < unwrappedItem.baseValue {
                        cheapestItem = item
                    }
                }
            }
            return cheapestItem
        }
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"