//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var glindaItems : [UDItem] = []
        
        var oldestItem : UDItem?
        
        for x in inventory {
            print("ITEMS " + String(x.historicalData))
            for value in x.historicalData.values {
                //                print("\(value)")
                if (String(value) == planet){
                    glindaItems.append(x)
                }
            }
        }
        
        for y in glindaItems {
            //            print("ITEMS " + String(x.historicalData))
            
            var oldestItemAge = 0
            
            if let itemAge = y.historicalData["CarbonAge"] as? Int {
                if itemAge > oldestItemAge {
                    oldestItemAge = itemAge
                    oldestItem = y
                }
            }
        }
        
        
        return oldestItem
    }
    
    
    
    
    
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"