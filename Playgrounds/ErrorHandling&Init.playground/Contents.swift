class Account {
    var username: String
    
    init(username: String)  throws{
        guard !username.isEmpty else{
            throw ValidationError.emptyField //throw error for empty usernames
        }
        self.username = username
    }
}

do {
    let account = try Account(username: "Ricky Bobby") // attempt to create an account
    print("account Created: \(account.username)")
} catch {
    print("error Creating account \(error)")
}

enum ValidationError: Error {
    case emptyField
    case invalidName
}
