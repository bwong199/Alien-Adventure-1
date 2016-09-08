//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        var verify :Bool = true
        
        var individualCount = s1.characters.count + s2.characters.count
        var concatString = String(s1 + s2)
        
        
        if (s1 == "" || s2 == "" ){
            verify = true
        } else {
            verify = false
        }
        
        
        if (shuffle.characters.count > individualCount || shuffle.characters.count < individualCount ){
            verify = false
        } else {
            verify = true
        }
        
        for x in concatString.characters {
            for y in shuffle.characters {
                if x == y {
                    print("individual " + String(x))
                    print("individual " + String(y))
                    verify = true
                } else {
                    verify = false
                }
            }
        }
     
        return verify
    }
}
