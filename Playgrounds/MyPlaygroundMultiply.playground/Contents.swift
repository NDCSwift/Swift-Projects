import UIKit

let newWord = "Hello"
let symbol = "_"
let count = newWord.count
var hiddenWord = ""

for _ in 0..<count {
    hiddenWord += symbol
}
print(hiddenWord)
