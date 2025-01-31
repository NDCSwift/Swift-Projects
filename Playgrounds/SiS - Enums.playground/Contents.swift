enum Transportation {
    case car(brand: String)
    case bike
    case bus(route: Int)
}

let myCar = Transportation.car(brand: "Toyota")

switch myCar {
case .car(let brand):
    print("Driving a \(brand) car!")
default:
    print("Other transport mode")
}
