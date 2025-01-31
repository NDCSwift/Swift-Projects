extension String {
    var reversedText: String {
        String(self.reversed()) //reverse the string
    }
}

let greeting = "Hello, World!"
print(greeting.reversedText)
let movieTitle = "The great Gatsby!"
print(movieTitle.reversedText)

let age = 10
print(age.reverse)
