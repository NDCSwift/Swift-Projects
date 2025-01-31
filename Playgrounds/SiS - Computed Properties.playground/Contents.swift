struct Rectangle {
    var width: Double
    var height: Double
    var area: Double {
        get {
            return width * height
        }
        set {
            width = newValue / height
        }
    }

}

