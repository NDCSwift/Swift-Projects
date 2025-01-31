import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    // Define two numbers (Int data types)
    @State private var number1: Int = 0
    @State private var number2: Int = 0
    @State private var result: Int = 0

    // Function to calculate the sum of two numbers
    func calculateSum() {
        result = number1 + number2
    }
    
    var body: some View {
        VStack {
            // TextField for the first number input
            TextField("Enter first number", value: $number1, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // TextField for the second number input
            TextField("Enter second number", value: $number2, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // Button to trigger the calculation
            Button(action: calculateSum) {
                Text("Calculate Sum")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // Display the result of the calculation
            Text("Result: \(result)")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

PlaygroundPage.current.setLiveView(ContentView())
