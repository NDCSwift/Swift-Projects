for letter in "ABCDEFG" {
  print("The letter is \(letter)")
}
//This loop iterates directly over the string "ABCDEFG", treating it as a collection of characters. In each iteration of the loop, the variable letter is assigned to the current character in the string.


for (index, letter) in "ABCDEFG".enumerated() {
  print("\(index): \(letter)")
}

//For each character in the string, it prints the index of the character followed by the character itself. This approach is useful when you need to know the position of each element in the collection in addition to its value.

// NOTE to see the results in this playground you may need to open the Debug window (found in the bottom left of the screen (next to line and Col)
