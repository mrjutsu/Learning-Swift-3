// Area calculation for room #1

//let length = 10
//let width = 12
//
//let areaOfRoom = length * width

// Area calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondWidth * secondLength


func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    return areaOfRoom
}
let area1 = area(length: 10, width: 20)
let area2 = area(length: 10, width: 12)

area1

//func someFunction() {}

// Code challenge

func temperatureInFahrenheit(temperature: Double) -> Double {
    let fahrenheit = ((temperature * 9) / 5) + 32
    return fahrenheit
}
let fahrenheitTemp = temperatureInFahrenheit(temperature: 24.0)


// Argument labels

func remove(havingValue value: String){
    print(value)
}

//func name(externalValue localValue: Type) {
//    print(localValue)
//    // Function Code
//}
//name(externalValue: Somevalue)

remove(havingValue: "A")

// Code challenge

func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
}
//let result = getRemainder(value: 10, divisor: 3)

// +++++++++++++


// Default values

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int,carpetColor: String) {
    // Gray carpet = $1/sq ft
    // tan carpet = $2/sq ft
    // Deep Blue carpet = $4/sq ft
    var price = 0
    
    let areaOfRoom = area(length: length, width: width)
    
    switch color {
    case "gray":
        price = areaOfRoom * 1
    case "tan":
        price = areaOfRoom * 2
    case "blue":
        price = areaOfRoom * 4
    default:
        price = 0
    }
    
    return (price,color)
}
//carpetCostHaving(length: 10, width: 20, carpetColor: "tan")
let result = carpetCostHaving(length: 20, width: 10)
result.price
result.carpetColor


// Scope

func arrayModifier(array: [Int]){
    var arrayOfInts = array
    arrayOfInts.append(5)
    
    var secondArray = arrayOfInts
}

var arrayOfInts = [1,2,3,4]
arrayModifier(array: arrayOfInts)


// Pass an _ (underscore) as an external name to call the function without argument labels
func someFunction(_ test: Int){}
someFunction(1)


// Code challenge

func coordinates (for location: String) -> (Double,Double) {
    let eiffelTower = (48.8582,2.2945)
    let greatPyramid = (29.9792,31.1344)
    let operaHouse = (33.8587,151.2140)
    var response: [Double] = []
    
    switch location {
    case "Eiffel Tower":
        response.append(eiffelTower.0)
        response.append(eiffelTower.1)
    case "Great Pyramid":
        response.append(greatPyramid.0)
        response.append(greatPyramid.1)
    case "Sydney Opera House":
        response.append(operaHouse.0)
        response.append(operaHouse.1)
    default:
        response.append(0)
        response.append(0)
    }
    return (response[0],response[1])
}
coordinates(for: "Eiffel Tower")





























