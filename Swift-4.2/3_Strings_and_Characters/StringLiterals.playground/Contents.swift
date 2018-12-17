//: Playground - noun: a place where people can play

//// String Literals

import UIKit

var str = "Hello, playground!!!"

let someString = "Some string literal value"

// Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles.
"Where shall I begin, please your Majesty?" he asked.
"Begin at the beginning," the King said gravely,
"and go on till you come to the end; then stop."
"""

let singleLineString = "These are the same."
let multiLineString = """
These are the same.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.
"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

// Special Characters in String Literals
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
print(wiseWords + "\n")

let dollarSign = "\u{24}" // $, Unicode scalar U+0024
print(dollarSign + "\n")

let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
print(blackHeart + "\n")

let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
print(sparklingHeart)

let threeDoubleQuotes = """
Escaping the first quote \"""
Escaping all three quotes \"\"\"
"""
