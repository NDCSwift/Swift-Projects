var username: String? = nil
print(username) // Output: nil

print("Hello, \(username ?? "Guest")!")

var age: Int? = nil
print("Age: \(age ?? 18)")
