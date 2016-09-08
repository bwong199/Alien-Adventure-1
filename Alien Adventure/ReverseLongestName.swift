//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var longestName = ""
        for x in inventory {
            print(x.name)
            if longestName.characters.count < x.name.characters.count {
                longestName = x.name
            }
        }
        
        
        
        var reversedLongestName = " "
        
//        for x in longestName.characters.reverse() {
//            reversedName +=  String(x);
//        }
        reversedLongestName = String(longestName.characters.reverse())
        
        return reversedLongestName;
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"