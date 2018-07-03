import UIKit

let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
userDefinedColorName = "green"

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
// userDefinedColorName is not nil, so colorNameToUse is set to "green"
print(colorNameToUse)
