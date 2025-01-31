infix operator ++ : AdditionPrecedence

extension Array {
    static func ++ (left: Array, right: Array) -> Array{
        left + right // use swifts + operators for arrays
    }
}

let mixedArray: [Any] = ["SwiftLearning", 28,5.14,"ILoveSwifties",11, true,"Hello world", false, "I want to subscribe"]

//filter strings and numbers
let strings = mixedArray.compactMap{ $0 as? String}
let numbers = mixedArray.compactMap{ $0 as? Int}

let combined = strings ++ numbers.map{ String($0)}
print(combined)
