import SwiftUI


struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
         Text("count: \(count)") //display the current count
            Button("Increment") {
                count += 1 //update the count
            }
        }
    }
}

