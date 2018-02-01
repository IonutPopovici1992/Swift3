//: Playground - noun: a place where people can play

//// Optional Chaining

import UIKit

var str = "Hello, playground!!!"

/// Optional Chaining as an Alternative to Forced Unwrapping
/// or Optional binding chains

class Person {
    var residence: Residence?
    // var residence: Optional<Residence>
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
// let roomCount = john.residence!.numberOfRooms
// this triggers a runtime error
// succeeds when john.residence has a non-nil value and will set roomCount to an Int value

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "Unable to retrieve the number of rooms."

john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "John's residence has 1 room(s)."
