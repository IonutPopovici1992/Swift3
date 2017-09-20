//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

class Car {
    
    var topSpeed = 200
    
    func drive() {
        print("Driving at \(topSpeed).")
    }
}

class FutureCar : Car {
    
    override func drive() {
        
        super.drive()
        print("And rockets boosting at 50.")
    }
    
    func fly() {
        print("Flying!!!")
    }
}

let myRide = Car()
myRide.topSpeed
myRide.drive()

let myNewRide = FutureCar()
myNewRide.topSpeed
myNewRide.drive()
myNewRide.fly()
