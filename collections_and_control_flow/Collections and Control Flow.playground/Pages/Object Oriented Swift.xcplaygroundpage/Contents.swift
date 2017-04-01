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


// Enemies
class Enemy {
    // Stored properties
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) -> () {
        life -= factor
    }
}

class SuperEnemy: Enemy {
    
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
    
}


// Tower
class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) -> () {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Gotcha!")
        } else {
            print("Not in range!")
        }
    }
    
    // Helper method isInRange()
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        
        return false
    }
}

class LaserTower: Tower {
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        
        print("Enemy destroyed!")
    }
    
}

let tower = Tower(x: 3, y: 3)
let enemy = Enemy(x: 2, y: 2)
let superEnemy = SuperEnemy(x: 3, y: 3)
let laserTower = LaserTower(x: 5, y: 5)
superEnemy.life

tower.fire(at: enemy)
tower.fire(at: superEnemy)
laserTower.fire(at: superEnemy)



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

// Code challenge

//class Shape {
//    var numberOfSides: Int
//    
//    init(numberOfSides: Int) {
//        self.numberOfSides = numberOfSides
//    }
//}
//
//let someShape = Shape(numberOfSides: 3)


// Code challenge

//struct Location {
//    let latitude: Double
//    let longitude: Double
//}
//
//class Business {
//    let name: String
//    let location: Location
//    
//    init(name: String, latitude: Double, longitude: Double) {
//        self.name = name
//        self.location = Location(latitude: latitude, longitude: longitude)
//    }
//}
//let someBusiness = Business(name: "My Business", latitude: 2.0, longitude: 4.0)

// Code challenge

//class Vehicle {
//    var numberOfDoors: Int
//    var numberOfWheels: Int
//    
//    init(withDoors doors: Int, andWheels wheels: Int) {
//        self.numberOfDoors = doors
//        self.numberOfWheels = wheels
//    }
//}
//
//class Car: Vehicle {
//    let numberOfSeats: Int = 4
//    
//    override init(withDoors doors: Int, andWheels wheels: Int) {
//        super.init(withDoors: doors, andWheels: wheels)
//    }
//}
//
//let someCar = Car(withDoors: 4, andWheels: 4)

// Code challenge

//class Person {
//    let firstName: String
//    let lastName: String
//    
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//    
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//class Doctor: Person {
//    
//    override init(firstName: String, lastName: String) {
//        super.init(firstName: firstName, lastName: lastName)
//    }
//    
//    override func fullName() -> String {
//        return "Dr. \(self.lastName)"
//    }
//    
//}
//let someDoctor = Doctor(firstName: "David", lastName: "Rosillo")
//someDoctor.fullName()









































