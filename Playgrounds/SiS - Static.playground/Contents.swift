struct Circle {
    static let pi = 3.14159
    
    static func area(radius: Double) -> Double {
        return pi * radius * radius
    }
}
print(Circle.area(radius: 5)) // Output: 78.53975
