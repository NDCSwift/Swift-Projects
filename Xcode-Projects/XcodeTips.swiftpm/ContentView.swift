import SwiftUI

struct ContentView: View {
    @State private var myNewName = "John Doe"
    @State private var myNewAge = 25
    @State private var showAlert = false
    @State private var isDarkMode = false
    @State private var counter = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    // MARK: Multi-Cursor Editing
                    GroupBox(label: Text("Multi-Cursor Editing")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("🖊 Edit multiple lines simultaneously:")
                                .font(.headline)
                            Text("Use Option (⌥) + Click to place multiple cursors!")
                            Text("// Try editing these lines at the same time:")
                            Text("currentName = \"John\"")
                            Text("currentAge = 25")
                            Text("currentRole = \"Developer\"")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                    
                    // MARK: Refactoring
                    GroupBox(label: Text("Refactoring")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("🔧 Rename properties globally with ⌃⌘E:")
                                .font(.headline)
                            Text("Current values:")
                            Text("Name: \(myNewName)")
                            Text("Age: \(myNewAge)")
                     
                        }
                        .padding()
                    }
                    
                    // MARK: Code Snippets
                    GroupBox(label: Text("Code Snippets")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("📋 Reuse blocks of code via Snippets Library:")
                                .font(.headline)
                          
                            VStack {
                                Text("Placeholder")
                                Button("Press Me!") {
                                    print("button Tapped")
                                }
                                
                
                            }

                            
                        }
                        .padding()
                    }
                    
                    // MARK: Live Previews
                    GroupBox(label: Text("Live Previews")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("👁 Use live previews to instantly test your UI: Hello world")
                                .font(.headline)
                            Text("Toggle Dark Mode to see live updates:")
                            Toggle(isOn: $isDarkMode) {
                                Text("Dark Mode")
                                    .font(.headline)
                            }
                            .toggleStyle(SwitchToggleStyle(tint: .blue))
                            .padding()
                            .background(isDarkMode ? Color.black : Color.white)
                            .cornerRadius(10)
                            .foregroundColor(isDarkMode ? .white : .black)
                        }
                        .padding()
                    }
                    
                    // MARK: Jump to Definition
                    GroupBox(label: Text("Jump to Definition")) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("🔍 Use ⌘ + Click to navigate to function or type definitions:")
                                .font(.headline)
                            Text("Example: Try clicking the `incrementCounter` function below.")
                            Button("Increment Counter") {
                                incrementCounter()
                            }
                            .buttonStyle(.borderedProminent)
                            Text("Counter: \(counter)")
                        }
                        .padding()
                    }
                }
                .padding()
            }
            .navigationTitle("Xcode Tips & Tricks")
        }
    }
    
    // MARK: - Example Function for Jump to Definition
    func incrementCounter() {
        counter += 1
    }
}

#Preview {
    ContentView()
}
