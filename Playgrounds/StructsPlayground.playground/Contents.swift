struct Person {
    var name: String
    var age: Int
    
    func introduce() {
        print("Hi, I’m \(name) and I’m \(age) years old.")
    }
}

let person = Person(name: "Alice", age: 30)
print(person.name) // Output: Alice

person.introduce()
