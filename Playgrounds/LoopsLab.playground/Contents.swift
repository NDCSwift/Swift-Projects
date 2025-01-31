//: ## Introduction to Loops
//: Loops allow us to repeat a block of code multiple times, which is super helpful when we want to avoid writing repetitive code.
//: There are three main types of loops in Swift:
//:
//: - `for-in` loops
//: - `while` loops
//: - `repeat-while` loops

//: ## For-In Loops
//: Let's start with `for-in` loops. These are great when you know how many times you want to repeat an action.

print("For-In Loop Example:")
for number in 1...5 {
    print("This is loop iteration number \(number)")
}

//: Try it yourself: Change the range (1...5) to another range, like 1...10, and observe what happens!

//: ### Exercise 1: For-In Loop
//: Modify the loop below to print the squares of numbers from 1 to 10.

for number in 1...5 {
    // Print the square of the number
}

//: ## While Loops
//: `While` loops are used when you don't know in advance how many times the code should run. They continue looping as long as a condition is true.

print("\nWhile Loop Example:")
var counter = 1
while counter <= 5 {
    print("Counter is now \(counter)")
    counter += 1
}

//: Try it yourself: Change the condition to stop the loop when `counter` reaches 8.

//: ### Exercise 2: While Loop
//: Write a `while` loop that doubles a number until it exceeds 100.
var value = 1
// Write your loop here

//: ## Repeat-While Loops
//: `Repeat-while` loops are similar to `while` loops, but they always execute the code at least once before checking the condition.

print("\nRepeat-While Loop Example:")
var repeatCounter = 1
repeat {
    print("This is repeat iteration \(repeatCounter)")
    repeatCounter += 1
} while repeatCounter <= 3

//: ### Exercise 3: Repeat-While Loop
//: Write a `repeat-while` loop that prints numbers starting from 10 and decreases by 2, stopping when it reaches 0 or lower.
var start = 10
// Write your loop here

//: ## Nested Loops
//: Loops can be nested to perform more complex tasks. Here's an example:

print("\nNested Loops Example:")
for i in 1...3 {
    for j in 1...2 {
        print("i = \(i), j = \(j)")
    }
}

//: ### Exercise 4: Nested Loops
//: Write a nested loop to print a multiplication table for numbers 1 through 5.

for i in 1...5 {
    // Add your inner loop here
}

//: ## Infinite Loops and Breaking Out
//: Be careful to avoid creating infinite loops! You can also use the `break` statement to exit a loop early.

print("\nBreaking Out of a Loop:")
for number in 1...10 {
    if number == 5 {
        print("Exiting loop early at \(number)")
        break
    }
}

//: ## Wrap-Up
//: Loops are powerful tools for automating repetitive tasks and handling large data sets. Practice writing different types of loops and experiment with the exercises above!
