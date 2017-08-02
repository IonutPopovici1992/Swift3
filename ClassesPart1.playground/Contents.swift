//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"

class BlogSpot {
    
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
}

let myPost = BlogSpot()
myPost.title = "Hello, playground!"
myPost.author = "Chris Ching"
myPost.body = "Hello 1 ..."
myPost.addComment()

print(myPost.numberOfComments)

print(myPost)

let mySecondPost = BlogSpot()
mySecondPost.title = "Goodbye, playground!"
mySecondPost.author = "John Travolta"
mySecondPost.body = "Hello 2 ..."
mySecondPost.addComment()

print(mySecondPost.numberOfComments)

print(mySecondPost)
