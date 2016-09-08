//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let itemListURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")
        let itemArray = NSArray(contentsOfURL: itemListURL!)// as! [[String:AnyObject]]
        var bannedItem = [Int]()
        
        var itemName = ""
        var itemID = -1
        var carbonAge = 0
        
        for item in itemArray! {
            if let name = item["Name"] as? String{
                itemName = name.lowercaseString
            }
            if let historicalData = item["HistoricalData"] as? [String:AnyObject]{
                if let age = historicalData["CarbonAge"] as? Int{
                    carbonAge = age
                }
            }
            if let id = item["ItemID"] as? Int {
                itemID = id
            }
            if carbonAge < 30 && itemName.containsString("laser") {
                bannedItem.append(itemID)
                print("\(itemName)'s ID is \(itemID),its carbon age is \(carbonAge)")
                
            }
        }
        print(bannedItem)
        return bannedItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"