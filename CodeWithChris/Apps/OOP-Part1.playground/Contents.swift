//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!!!"


class Person {
    
    var name: String = "Initial Name"
    
    init() {
        self.saySomething()
    }
    
    func saySomething() {
        print("Say something.")
    }
    
}

var firstPerson = Person()
firstPerson.name = "Alice"
firstPerson.name
print(firstPerson.name)

var secondPerson = Person()
secondPerson.name = "Bob"
secondPerson.name
print(secondPerson.name)

print()
print(firstPerson.name)
print(secondPerson.name)
