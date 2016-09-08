//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rarityDict: [UDItemRarity: Int] = [ .Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0 ]
        
        for item in inventory {
            print(item.rarity)
            switch item.rarity {
            case .Common:
                rarityDict[.Common]?++
                
            case .Uncommon:
                rarityDict[.Uncommon]?++
                
            case .Rare:
                rarityDict[.Rare]?++
                
            case .Legendary:
                rarityDict[.Legendary]?++
            }
            
            
        }
        return rarityDict
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"