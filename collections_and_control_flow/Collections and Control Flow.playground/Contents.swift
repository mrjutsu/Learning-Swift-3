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













