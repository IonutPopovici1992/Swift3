//: Playground - noun: a place where people can play

//// Unicode

import UIKit

var str = "Hello, playground!!!"

// Unicode Scalars

// Extended Grapheme Clusters
let eAcute: Character = "\u{E9}" // é
print(eAcute)
let combinedEAcute: Character = "\u{65}\u{301}" // e followed by
print(combinedEAcute)
// eAcute is é, combinedEAcute is é

let precomposed: Character = "\u{D55C}" // 한
print(precomposed)
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ
print(decomposed)
// precomposed is 한, decomposed is 한

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
print(enclosedEAcute)
// enclosedEAcute is é⃝

let regionalIndicatorForUs: Character = "\u{1F1FA}\u{1F1F8}"
print(regionalIndicatorForUs)
// regionalIndicatorForUS is 🇺🇸
