struct Address {
    var street: String
}
struct Person {
    var name: String
    var address: Address?
}
var person: Person? = Person(name: "Alice", address: nil)
print(person?.address?.street) // Output: nil


extension Person {
    func description() -> String {
        return "Name: \(name)"
    }
}
print(person?.description()) // Output: Name: Alice


