var usernames = ["Bob", "Dennis", "Mac", "Charlie", "Frank"]

@MainActor
func addUsername(_ name: String){
    if !usernames.contains(name) {
        usernames.append(name)
        print("Added \(name) to usernames")
    }
    else{
        print("\(name), is already in the list")
    }
}

addUsername("Eve")
addUsername("Bob")
print(usernames)

let sortedUsernames = usernames.sorted()
print("Sorted usernames are \(sortedUsernames)")
let countedUsernames = usernames.count
print("Number of usernames is \(countedUsernames)")
