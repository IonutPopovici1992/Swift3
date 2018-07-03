import UIKit

let age = -3
// assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.

// assert(age >= 0)

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

// In the implementation of a subscript...
// precondition(index > 0, "Index must be greater than zero.")
