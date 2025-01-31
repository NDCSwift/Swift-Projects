func example() {
    defer { print("First defer") }
    defer { print("Second defer") }
    print("Function body")
}
example()
