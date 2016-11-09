//
//  File.swift
//  Lesson4Task2
//
//  Created by Kirill Netavskiy on 09.11.16.
//  Copyright © 2016 Kirill Netavskiy. All rights reserved.
//

import Foundation

class Fish {
    
    var countOfFish = [Int]()
    
    func addFishies(fishy: Int){
        
        countOfFish += [fishy]
       
        
    }
    
    func weihtOFFish() -> Int {
        var sum = 0
        for i in countOfFish{
            sum += i
        
        }
        return sum
    }
    
}
