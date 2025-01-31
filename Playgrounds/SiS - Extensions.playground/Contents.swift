extension String {
    func countVowels() -> Int {
        let vowels = "aeiou"
        return self.lowercased().filter { vowels.contains($0) }.count
    }
}

let message = "Hello, World!"
print(message.countVowels()) // Output: 3

extension String {
    var isPalindrome: Bool {
        return self == String(self.reversed())
    }
}

print("racecar".isPalindrome) // Output: true
print("hello".isPalindrome)   // Output: false
