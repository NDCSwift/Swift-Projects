class SecureNote {
    private let noteID: String
    private(set) var content: String // immutable externally, mutable internally
    
    init(noteID: String, content: String) {
        self.noteID = noteID
        self.content = content
    }
    func updateContent(newContent: String) {
        content = newContent
    }
}

let note = SecureNote(noteID: "123", content: "Iniatial Content")
//note.content = "New Content"
note.updateContent(newContent: "Updated Content") // allowed because the method is internal - therefore its mutable
