//
//  main.swift
//  Lesson4Task2
//
//  Created by Kirill Netavskiy on 09.11.16.
//  Copyright © 2016 Kirill Netavskiy. All rights reserved.
//

import Foundation

var a = Fish()
var fish = 0
var fishInAquarium = Int(arc4random_uniform(40)) + 10
var dorry = Fish()
var nemo = Fish()

while fishInAquarium != 0{
    fish = Int(arc4random_uniform(9)) + 1
    a.addFishies(fishy: fish)
    fishInAquarium = fishInAquarium - 1
    
}
print("fishes in the pool ", a.countOfFish.count)
var isDorryTurn = true
while a.countOfFish.count != 0 {
    if isDorryTurn{
        dorry.addFishies(fishy: a.countOfFish.first!)
        a.countOfFish.remove(at: a.countOfFish.startIndex)
        isDorryTurn = false
    }else{
        nemo.addFishies(fishy: a.countOfFish.first!)
        a.countOfFish.remove(at: a.countOfFish.startIndex)
        isDorryTurn = true
    }
}



print("Dorry", dorry.weihtOFFish(), dorry.countOfFish.count)
print("Nemo", nemo.weihtOFFish(), nemo.countOfFish.count)

