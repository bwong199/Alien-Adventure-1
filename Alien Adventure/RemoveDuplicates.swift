//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {        
        var withoutDuplicates = [UDItem]()
        
        for item in inventory {
            for uniqueItem in withoutDuplicates {
                var value = false
                if item == uniqueItem {
                    value = value || true
                }
                if value == false {
                    withoutDuplicates.append(item)
                }
            }
        }
        
        return withoutDuplicates    }
    
}
