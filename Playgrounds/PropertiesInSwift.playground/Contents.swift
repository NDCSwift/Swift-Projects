
struct Car {
    var make: String
    var model: String
    var year: Int
    var fullName: String {
        return "\(year) \(make) \(model)"
    }
    
    var age: Int {
        get {
            return 2024 - year
        }
        set(newAge){
            year = 2024 - newAge
        }
    }
    
    lazy var carDetails: String = {
        print("generating car details...")
        return "\(year) \(make) \(model)"
    }()
    
}


var car = Car(make: "Toyota", model: "Corolla", year: 2023)
print(car.make)
print(car.fullName)
car.age = 1
print(car.year)
print(car.carDetails)
