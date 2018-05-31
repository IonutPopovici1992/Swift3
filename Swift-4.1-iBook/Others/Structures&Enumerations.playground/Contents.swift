//: Playground - noun: a place where people can play

/// Structures and Enumerations Are Value Types

import UIKit

var str = "Hello, playground!!!"

class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width).")
// Prints "The width of someResolution is 0."

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width).")
// Prints "The width of someVideoMode is now 1280."

let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
// Prints "cinema is now 2048 pixels wide"

print("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"


enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection = .east
if rememberedDirection == .west {
    print("The remembered direction is still .west")
}
// Prints "The remembered direction is still .west"
