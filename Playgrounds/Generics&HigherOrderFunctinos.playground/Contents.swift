func filterAndTransform<T, U>(_ array: [T], filterCondition:  (T) -> Bool, transform: (T) -> U) -> [U] {
    return array.filter(filterCondition).map(transform)
}

let numbers = [1,2,3,4,5]

let filteredAndDoubled = filterAndTransform(numbers, filterCondition: { $0 % 2 == 0}, transform: {$0 * 2})
print(filteredAndDoubled)
