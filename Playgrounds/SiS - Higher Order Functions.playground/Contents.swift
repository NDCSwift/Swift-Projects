let numbers = [1, 2, 3]
let doubled = numbers.map { $0 * 2 }
print(doubled) // Output: [2, 4, 6]

let evenNumbers = numbers.filter { $0 % 2 == 0 }
print(evenNumbers) // Output: [2]

let sum = numbers.reduce(0) { $0 + $1 }
print(sum) // Output: 6

