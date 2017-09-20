//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
print(str)

class BlogSpot: NSObject {
    
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
    
    override var description: String {
        get {
            return "Message!!!"
        }
    }
    
    /*
     func representation() -> String {
        return self.title + " " + self.body + self.author
     }
    */
}

let myPost = BlogSpot()
myPost.title = "Hello, playground!"
myPost.author = "Chris Ching"
myPost.body = "Hello 1 ..."
myPost.addComment()

print(myPost.title)
print(myPost.author)
print(myPost.body)
print(myPost.numberOfComments)

print(myPost)


let mySecondPost = BlogSpot()
mySecondPost.title = "Goodbye, playground!"
mySecondPost.author = "John Travolta"
mySecondPost.body = "Hello 2 ..."
mySecondPost.addComment()

print(mySecondPost.title)
print(mySecondPost.author)
print(mySecondPost.body)
print(mySecondPost.numberOfComments)

print(mySecondPost)
