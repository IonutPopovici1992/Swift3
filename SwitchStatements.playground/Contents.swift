//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"

var someCharacter: Character = "c"

switch someCharacter {
    
    case "a":
        print("Is an A.")
    
    case "b", "c":
        print("Is a B or C.")
    
    default:
        print("Some fallback ...")
}
