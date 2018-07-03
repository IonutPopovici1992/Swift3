import UIKit

var a = 1
a += 2
// a is now equal to 3

let name = "World"

if name == "World" {
    print("Hello, World!")
} else {
    print("I'm sorry \(name), but I don't recognize you!")
}
// Prints "Hello, World!", because name is indeed equal to "World".


(1, "zebra") < (2, "apple") // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird") // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog") // true because 4 is equal to 4, and "dog" is equal to "dog"
