class Dog {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func bark() {
        print("\(name) says Woof!")
    }
}

let myDog = Dog(name: "Buddy", age: 3)
myDog.bark()  // Output: Buddy says Woof!

class Poodle: Dog {
    func show() {
        print("\(name) is showing off!")
    }
}
let fancyDog = Poodle(name: "Fluffy", age: 2)
fancyDog.show() // Output: Fluffy is showing off!
