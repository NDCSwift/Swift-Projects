var email: String = "Exmaple@Yahoo.com"
var phoneNumber: String? = nil
var username: String? = "SwiftUser"

@MainActor
func displaySignUpSummary() {
    print("Email: \(email)")
    
    if let unwrappedPhone = phoneNumber {
        print("Phone Number: \(unwrappedPhone)")
    }else {
        print("Phone number: Not provided")
    }
    print("Username: \(username ?? "Guest")")
    
}

displaySignUpSummary()
