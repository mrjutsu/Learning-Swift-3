let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0,0)
coordinate1.x

struct Point {
    // Stored properties
    let x: Int
    let y: Int
    
    // Initializer
    init(x: Int, y: Int) {
        // self refers to the instance
        self.x = x
        self.y = y
    }
    
    // v Documentation comment, it shows when alt + clicking in the function (///)
    
    //points() is an instance method
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        // var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

// Instance of struct
let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.x
coordinatePoint.points()

let coordinatePoint2 = Point(x: 2, y: 2)

// Code challenge

//struct Book {
//    let title: String
//    let author: String
//    let price: Double
//}
//
//let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)

//**************

// Code challenge

//struct Person {
//    let firstName: String
//    let lastName: String
//    
//    func fullName() -> String {
//        let fullName = firstName + " " + lastName
//        return fullName
//    }
//}
//
//let aPerson = Person(firstName: "David", lastName: "Rosillo")
//let myFullName = aPerson.fullName()


// Code challenge

//struct RGBColor {
//    let red: Double
//    let green: Double
//    let blue: Double
//    let alpha: Double
//    
//    let description: String
//    
//    // Add your code below
//    
//    init(red: Double, green: Double, blue: Double, alpha: Double) {
//        self.red = red
//        self.green = green
//        self.blue = blue
//        self.alpha = alpha
//        self.description = "red: \(self.red), green: \(self.green), blue: \(self.blue), alpha: \(self.alpha)"
//    }
//}
//
//let color = RGBColor(red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0)
//color.description












































