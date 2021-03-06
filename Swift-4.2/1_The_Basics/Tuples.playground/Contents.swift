/// Tuples

import UIKit

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode).")
// Prints "The status code is 404."
print("The status message is \(statusMessage).")
// Prints "The status message is Not Found."

print()

let (justStatusCode, _) = http404Error
print("The status code is \(justStatusCode).")
// Prints "The status code is 404"

print()

print("The status code is \(http404Error.0).")
// Prints "The status code is 404."
print("The status message is \(http404Error.1).")
// Prints "The status message is Not Found."

print()

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode).")
// Prints "The status code is 200."
print("The status message is \(http200Status.description).")
// Prints "The status message is OK."
