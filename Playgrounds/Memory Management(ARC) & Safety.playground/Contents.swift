var numbers = [1,2,3]

@MainActor func incrementElement(at index: Int) {
    numbers [index] += 1
}

@MainActor func incrementCopy(at index: Int){
    var copy = numbers
    copy[index] += 1
    print(copy)
}

incrementCopy(at: 0)
print(numbers)
