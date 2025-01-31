import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            

        }
    }
    
    /// Calculates the area of a rectangle.
    /// - Parameters:
    ///   - width: The width of the rectangle.
    ///   - height: The height of the rectangle.
    /// - Returns: The area as a Double.
    func calculateArea(width: Double, height: Double) -> Double {
        return width * height
    }
    
}
