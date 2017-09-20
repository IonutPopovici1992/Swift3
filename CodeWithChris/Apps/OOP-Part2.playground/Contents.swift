//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"


class Person {
    
    var name: String = "Initial Name"
    
    init() {
        
    }
    
    func walk() {
        print("I'm walking.")
    }
    
}

class Superhuman: Person {
    
    var alterEgoName: String = "Clark"
    
    func fly() {
        print("I'm flying.")
    }
    
    override func walk() {
        print("I'm walking really fast.")
        
        super.walk()
    }
}


var a = Person()
a.name = "Alice"
a.walk()

print()

var b = Superhuman()
b.name
b.walk()
b.fly()
