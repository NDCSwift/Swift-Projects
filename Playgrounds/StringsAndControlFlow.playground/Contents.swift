import Cocoa

import Foundation

// Step 2: Working with Strings

// Declare a variable named `greeting` and assign it a value of "Hello".
var greeting = "Hello"

// Append another string "World" to `greeting` using the `+=` operator.
greeting += " World"

// Create a new variable `exclamation` and assign it the value of `greeting` followed by an exclamation mark.
let exclamation = greeting + "!"

// Print the value of `exclamation` to the console.
print(exclamation)  // Output: Hello World!

// Step 3: String Interpolation

// Declare a constant `name` and assign it your name.
let name = "YourName"

// Use string interpolation to create a new string that includes a greeting to `name`.
let personalizedGreeting = "Hello, \(name)!"

// Print the value of `personalizedGreeting` to the console.
print(personalizedGreeting)  // Output: Hello, YourName!

// Step 4: Control Flow with If-Else

// Create a constant `age` and assign it a value.
let age = 20

// Use an if-else statement to print different messages based on the value of `age`.
if age < 18 {
    print("You are a minor.")
} else if age < 65 {
    print("You are an adult.")
} else {
    print("You are a senior.")
}
// Output: You are an adult.

// Step 5: Control Flow with Switch

// Create a constant `grade` and assign it a letter grade (e.g., "A", "B", "C", etc.).
let grade = "A"

// Use a switch statement to print different messages based on the value of `grade`.
switch grade {
case "A":
    print("Excellent!")
case "B":
    print("Good job!")
case "C":
    print("You can do better.")
case "D":
    print("Keep trying!")
case "F":
    print("Failed.")
default:
    print("Invalid grade.")
}
// Output: Excellent!

// Step 6: Looping with For-In

// Create an array of names.
let names = ["Alice", "Bob", "Charlie"]

// Use a for-in loop to print a personalized greeting for each name in the array.
for name in names {
    print("Hello, \(name)!")
}
// Output:
// Hello, Alice!
// Hello, Bob!
// Hello, Charlie!

// Step 7: Challenge

// Create a function named `isPalindrome` that takes a string as a parameter and returns true if the string is a palindrome, and false otherwise. (A palindrome is a word that reads the same backward as forward.)
func isPalindrome(_ word: String) -> Bool {
    let reversedWord = String(word.reversed())
    return word == reversedWord
}

// Call the `isPalindrome` function with different words and print the results.
print("Is 'racecar' a palindrome? \(isPalindrome("racecar"))")  // Output: true
print("Is 'hello' a palindrome? \(isPalindrome("hello"))")      // Output: false
