import Foundation

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .short
let date = Date()
let dateString = dateFormatter.string(from: date)
print(dateString) // Output: the current date & time


