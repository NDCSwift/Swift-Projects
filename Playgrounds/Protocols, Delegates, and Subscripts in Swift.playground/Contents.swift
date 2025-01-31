protocol AdvancedDataDelegate: AnyObject {
    func didUpdateItem(at index: Int, with value: String)
}

class AdvancedDataProvider {
    weak var delegate: AdvancedDataDelegate?
    
    private var items = ["Apples", "Bananas", "Grapes"]
    
    subscript(index: Int) -> String {
        get{
            guard index >= 0 && index < items.count else { return "Invalid Index"}
            return items[index]
            }
        set{
            if index >= 0 && index < items.count{
                items[index] = newValue
                delegate?.didUpdateItem(at: index, with: newValue)
            }
        }
    }
}

class AdvancedDataReciever: AdvancedDataDelegate {
    func didUpdateItem(at index: Int, with value: String) {
        print("Item at index \(index), updated to \(value)")
    }
}

let advancedProvider = AdvancedDataProvider()
let advancedReciever = AdvancedDataReciever()

advancedProvider.delegate = advancedReciever

print(advancedProvider[1])

advancedProvider[1] = "Blueberry"
print(advancedProvider[1])
