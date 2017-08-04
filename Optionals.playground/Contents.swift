//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"

class Person {
    
    var name = ""
}

class BlogPost {
    
    var title: String?
    var body = "Hey"
    var author: Person?
    var numberOfComments = 0
}

let post = BlogPost()

print(post.body + " and hello!")

post.title = "Yoo"

// Optional binding
if let actualTitle = post.title {
    // Optional contains value
    print(actualTitle + " salut!")
}

// Testing for nil
if post.title != nil {
    // Optional contains value
    print(post.title! + " salut!")
}
if post.title == nil {
    // Optional contains no value
}
