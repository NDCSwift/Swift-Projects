class LetterCollection {
    var letters = "Swift"
    
    subscript(index: Int) -> Character? {
        guard index >= 0 && index < letters.count else { return nil }
        return letters[letters.index(letters.startIndex, offsetBy: index)]
    }
}
let word = LetterCollection()
print(word[2]!) // Output: "i"
