class Vehicle {
    var make : String
    var model: String
    
    init(make: String, model: String) {
        self.make = make
        self.model = model
    }
}

let car1 = Vehicle(make: "Toyota", model: "Camry")
let car2 = car1
car2.model = "Corolla"
print(car1.model) // output corolla

struct Car{
    var make: String
    var model: String
    var type:  VehicleType
}

var carA = Car(make: "Honda", model: "Civic", type: .car)
var carB = carA
carB.model = "Accord"
print(carA.model) // output Civic
print(carB.model) // output Accord

enum VehicleType {
    case car
    case motorcyle
    case bicycle
}

let myCar = Car(make: "Ford", model: "Mustang", type: .bicycle)
print("My vehicle is a \(myCar.type)")
