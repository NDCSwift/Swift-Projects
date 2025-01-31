protocol Drivable {
    var speed: Int { get }
    func accelerate()
}

struct Car: Drivable {
    var speed: Int = 0
    
    func accelerate() {
        print("Accelerating to \(speed) mph!")
    }
}

extension Drivable {
    func stop() {
        print("Vehicle has stopped.")
    }
}

let myCar = Car(speed: 60)
myCar.accelerate() // Output: Accelerating to 60 mph!
myCar.stop()       // Output: Vehicle has stopped.

