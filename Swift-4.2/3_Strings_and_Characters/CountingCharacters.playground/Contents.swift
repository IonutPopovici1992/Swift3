/// Counting Characters

import UIKit

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters.")
// Prints "unusualMenagerie has 40 characters."

var word = "cafe"
print("The number of characters in \(word) is \(word.count).")
// Prints "The number of characters in cafe is 4."

word += "\u{301}"
print("The number of characters in \(word) is \(word.count).")
// Prints "The number of characters in café is 4"
