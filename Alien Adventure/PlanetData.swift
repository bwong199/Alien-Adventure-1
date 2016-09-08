//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let planetarydata = NSData(contentsOfURL: dataFileURL)!
        var currentDataFile: [[String: AnyObject]]!
        var planetWithBigTotal = 0
        var planetNameWithBigTotal = ""
        var tempTotal = 0
        
        do {
            currentDataFile = try! NSJSONSerialization.JSONObjectWithData(planetarydata, options: NSJSONReadingOptions()) as! [[String : AnyObject]]
        }
        for i in currentDataFile {
            if let planetName = i["Name"] as? String {
                // print (planetName)
                if let commonItems = i["CommonItemsDetected"] as? Int {
                    if let uncommonItems = i["UncommonItemsDetected"] as? Int{
                        if let rareItems = i["RareItemsDetected"] as? Int {
                            if let legendaryItems = i["LegendaryItemsDetected"] as? Int {
                                let tempTotal = ((1 * commonItems) + (2 * uncommonItems) + (3 * rareItems) + (4 * legendaryItems))
                                //print("The common item values are", commonItems)
                                if tempTotal > planetWithBigTotal {
                                    planetWithBigTotal = tempTotal
                                    planetNameWithBigTotal = planetName
                                    //    print(planetNameWithBigTotal)
                                    
                                }}}
                    }
                }
            }
        }
        print("Planet name \(planetNameWithBigTotal)")
        return planetNameWithBigTotal
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"