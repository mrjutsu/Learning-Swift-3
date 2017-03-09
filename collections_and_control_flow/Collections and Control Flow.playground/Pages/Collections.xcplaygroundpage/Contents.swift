// Collections and Control Flow

// Arrays

var todo: [String] = ["Finish Collections course","Buy groceries","Respond to emails"]

//var numbers: [Int] = [1,2,3]

// Append new item to end of array
todo.append("Pick up dry cleaning")

// Concatenating two arrays

[1,2,3] + [4]

// Different ways to concatenate arrays
todo = todo + ["Order book online"]
todo += ["Order book online"]

// Immutable arrays

let secondTaskList = ["Mow the lawn"]
//secondTaskList.append("Pay bills")
//secondTaskList += ["Some value"]

// Reading from arrays

let firstTask = todo[0]

let thirdTask = todo[2]

// Modifying existing values in an array
// (Mutating an array)

todo[4] = "Brush teeth"
todo[0] = "Watch treehouse content"

// Insert using indexes

todo.insert("Watch TV", at: 2)

// Removing items from array

todo.remove(at: 2)

todo.count

// Quiz

//let a = [1,2,3]

//var a = [10,1,12,22,96,14]

let a = [1,2,3]
//a.insert(4, at: 3)


// Dictionaries

/*
    Airport code (Key)      Airport Name (Value)
    LGA                     La Guardia
    LHR                     Heathrow
    BAQ                     Barranquilla
    GRB                     Green Bay
    CLO                     Cali
 */

// Dictionary of type string to string
// let dictionary: [key_type: value_type] = [key: value, key: value,...]
var airportCodes: [String: String] = [
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "BAQ": "Barranquilla",
    "GRB": "Green Bay",
    "CLO": "Cali"
]

let currentWeather = ["temperature": 26.0]

// Reading from a dictionary

airportCodes["baq"]
airportCodes["BAQ"]

airportCodes["CLO"]
airportCodes["GRB"]

// Inserting key value pairs

airportCodes["BOG"] = "Bogota"
airportCodes["BOG"]

airportCodes["BOG"] = "Bogota El Dorado"
airportCodes["BOG"]

airportCodes.updateValue("Medellin Jose Maria Cordoba", forKey: "MDE")
airportCodes["MDE"]

// Removing key pair values

airportCodes["MDE"] = nil
airportCodes.removeValue(forKey: "BOG")


// Dealing with non existent data

let newYorkAirport = airportCodes["LGA"]
//type(of: newYorkAirport)

let chicagoAirport = airportCodes["ORD"]



























