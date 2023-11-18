import UIKit

var greeting = "Hello, playground"
print(greeting)

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let optionalInt: Int? = 9
let actualInt: Int = optionalInt!

// optinal
var myString = "7"
var possibleInt = Int(myString)
print(possibleInt ?? 0)

myString = "banana"
possibleInt = Int(myString)
print(possibleInt ?? -1)

// array
var ratingList = ["Poor", "Fine", "Good", "Excellent"]
ratingList[1] = "OK"

let emptyArray = [String]()

// control flow
let number = 23
if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pretty big")
} else {
    print("The number is between 10 and 100")
}

var optionalName: String? = "John Appleseed"
greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

var optionalHello: String? = "Hello"
if let hello = optionalHello, hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}
print(greeting)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
    print(vegetableComment)
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
    print(vegetableComment)
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
    print(vegetableComment)
default:
    let vegetableComment = "Everything tastes good in soup."
    print(vegetableComment)
}

// range
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for _ in 0...4 {
    secondForLoop += 1
}
print(secondForLoop)

// function
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
print(greet(name:"Anna", day: "Tuesday"))
print(greet(name:"Bob", day: "Friday"))
print(greet(name:"Charlie", day: "a nice day"))


// method
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}

var array = ["apple", "banana", "dragonfruit"]
//array.insert("cherry", atIndex: 2)
print(array)


// class
class Shape {
    var numberOfSides = 0
    var name: String
    // initializers
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape(name: "my named shape")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()


class Square: Shape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() ->  Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()

class Circle: Shape {
    var radius: Double

    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }

    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}
let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")
