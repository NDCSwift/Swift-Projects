
struct Person {
    var name: String
    var age: Int
    
    func introduce(greeting: String){
        print("\(greeting), I'm \(self.name), and I'm \(self.age) years old")
    }
    
    mutating func updateName(name: String){
        self.name = name // 'self.name' refers to the property, 'name' refers to the parameter
    }
    func greet(greeting: String = "Hello"){
        print("\(greeting), I'm \(name)")
    }

}

var person = Person(name: "Alice", age: 25)
person.introduce(greeting: "Hi")
person.updateName(name: "Bob")
print(person.name)
person.greet()
person.greet(greeting: "Hey whats up?")

let typeOfPerson = Person.self
print(typeOfPerson)

protocol Identifiable {
    static func identify() -> Self
}
