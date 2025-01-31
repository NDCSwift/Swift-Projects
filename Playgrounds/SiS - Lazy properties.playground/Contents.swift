class DataLoader {
    lazy var data: [String] = loadData()
    
    func loadData() -> [String] {
        print("Loading data...")
        return ["Item 1", "Item 2", "Item 3"]
    }
}

let loader = DataLoader()
print(loader.data) // Output: Loading data... ["Item 1", "Item 2", "Item 3"]

