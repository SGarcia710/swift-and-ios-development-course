import UIKit

var randomNumber:Int
var counter = 0

repeat {
    counter += 1
    randomNumber = Int(arc4random_uniform(10))
} while (randomNumber != 8)
