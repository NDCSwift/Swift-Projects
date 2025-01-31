import Foundation

// Step 2: Declaring Variables and Constants
var number1: Double = 25
var number2: Double = 30

let pi: Double = 3.14159

// Step 3: Creating Functions
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double {
    return a / b
}

// Step 4: Using Functions with Variables
let additionResult = add(number1, number2)
let subtractionResult = subtract(number1, number2)
let multiplicationResult = multiply(number1, number2)
let divisionResult = divide(number1, number2)

print("Addition of \(number1) and \(number2): \(additionResult)")
print("Subtraction of \(number1) and \(number2): \(subtractionResult)")
print("Multiplication of \(number1) and \(number2): \(multiplicationResult)")
print("Division of \(number1) and \(number2): \(divisionResult)")

// Step 5: Exploring More Functions
func areaOfCircle(radius: Double) -> Double {
    return pi * radius * radius
}

print("Area of circle with radius 3: \(areaOfCircle(radius: 3))")
print("Area of circle with radius 5: \(areaOfCircle(radius: 5))")

// Step 6: Challenge
func calculate(_ a: Double, _ b: Double, operation: String) -> Double {
    switch operation {
    case "+":
        return add(a, b)
    case "-":
        return subtract(a, b)
    case "*":
        return multiply(a, b)
    case "/":
        return divide(a, b)
    default:
        print("Invalid operation")
        return 0
    }
}

print("Calculation \(number1) + \(number2): \(calculate(number1, number2, operation: "+"))")
print("Calculation \(number1) - \(number2): \(calculate(number1, number2, operation: "-"))")
print("Calculation \(number1) * \(number2): \(calculate(number1, number2, operation: "*"))")
print("Calculation \(number1) / \(number2): \(calculate(number1, number2, operation: "/"))")
