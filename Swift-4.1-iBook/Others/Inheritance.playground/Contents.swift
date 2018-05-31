//: Playground - noun: a place where people can play

//// Inheritance

import UIKit

var str = "Hello, playground!!!"

/// Defining a Base Class

class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "Travelling at \(currentSpeed) miles per hour."
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
// Vehicle: Traveling at 0.0 miles per hour

/// Subclassing

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
// Bicycle: Traveling at 15.0 miles per hour

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")
// Tandem: Traveling at 22.0 miles per hour

/// Overriding

// - Overriding Methods
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!!!")
    }
}

let train = Train()
train.makeNoise()
// Prints "Choo Choo!!!"

// - Overriding Properties

// - Overriding Property Getters and Setters

class Car: Vehicle {
    var gear = 1
    
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")
// Car: Traveling at 25.0 miles per hour in gear 3

// - Overriding Property Observers
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// AutomaticCar: Traveling at 35.0 miles per hour in gear 4

/// Preventing Overrides
// final
// final var, final func, final class func, final subscript
