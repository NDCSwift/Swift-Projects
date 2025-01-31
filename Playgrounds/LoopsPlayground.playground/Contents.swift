func factorial(of number: Int) -> Int {
    var result = 1
    for i in 1...number{
        result *= i
    }
    return result
}

let number = 3
print("Factorial of \(number) is \(factorial(of: number))")
