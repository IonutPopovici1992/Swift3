//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"

//// Sets

/// Hash Values for Set Types

/// Set Type Syntax

/// Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."
letters.insert("a")
print(letters)
// letters now contains 1 value of type Character
letters = []
print(letters)
// letters is now an empty set, but is still of type Set<Character>

/// Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop"]
print(favoriteGenres)
// favoriteGenres has been initialized with three initial items

/// Accessing and Modifying a Set
print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres."

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences."

favoriteGenres.insert("Jazz")
print(favoriteGenres)
// favoriteGenres now contains 4 items

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// Prints "Rock? I'm over it."

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here."

print()

/// Iterating Over a Set
for genre in favoriteGenres {
    print("\(genre)")
}

print()

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
