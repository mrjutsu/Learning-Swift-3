var todo: [String] = [
    "Finish corrections course",
    "Buy groceries",
    "Respond to emails",
    "Pick up dry cleaning",
    "Order books online",
    "Mow the lawn"
]

for task in todo {
    print(task)
}


// Ranges

// Closed range operator
1...5
// Half open range operator
1..<5

for number in 1...10 {
    print("\(number) times 5 = \(number * 5)")
}

// While loop

var x = 0

while x <= 20 {
    x += 1
    print(x)
}

var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}

// Repeat while

var counter = 1

while counter < 1 {
    print("I'm inside the while loop")
    counter += 1
}

repeat {
    print("I'm inside the repeat loop")
    counter += 1
} while counter < 1

// repeat is used to evaluate at least once the condition
// while is used to repeat the statement until the condition is met


// If statemente

var temperature = 9

if temperature < 18 {
    print("It's getting chilly. I recommend wearing a light sweater.")
} else if temperature < 12 {
  print("It's getting cold, let's get that jacket on")
} else {
    print("It feels great outside! A t-shirt will do.")
}

// Logical operators

if temperature > 7 && temperature < 12 {
    print("Might want to wear a scarf with that jacket")
}

var isRaining = true
var isSnowing = false

if isRaining || isSnowing {
    print("Get out those rain boots")
}

if !isRaining {
    print("Yay! The sun is out!")
}

if isRaining && isSnowing && temperature < 2 {
    print("Put some clothes on!")
}

if (isRaining || isSnowing) && temperature > 2 {
    print("Definitely get the leather gloves out!")
}

// Code challenge

var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if !(n%2 == 0) && (n%7 == 0) {
        results.append(n)
    }
    // End code
}


// Switch statement

let airportCodes = ["LGA","LHR","CDG","HKG","DXB","LGW","JFK","ORY"]

for airportCode in airportCodes {
    switch airportCode {
        case "LGA","JFK":
            print("New York")
        case "LHR","LGW":
            print("London")
        case "CDG","ORY":
            print("Paris")
        case "HKG":
            print("Hong Kong")
//        case "DXB":
//            print("Dubai")
        default:
            print("I don't know which city that airport is in")
    }
}

// You can put two statements in the case to make an OR comparisson


// Code challenge

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL","LIE","BGR":
        europeanCapitals.append(value)
    case "USA","MEX","BRA":
        otherCapitals.append(value)
    default:
        asianCapitals.append(value)
    }
    // End code
}


//Fixxbuxx challenge

func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    let divisibleByThree = n%3 == 0
    let divisibleByFive = n%5 == 0
    
    if divisibleByThree && divisibleByFive {
        return "FizzBuzz"
    } else if divisibleByThree {
        return "Fizz"
    } else if divisibleByFive {
        return "Buzz"
    } else {
        return "\(n)"
    }
    
    // End code
    return "\(n)"
}

//let months = 1...12
//
//for month in months {
//    switch month {
//    case 1:
//        print("January")
//    }
//}


























