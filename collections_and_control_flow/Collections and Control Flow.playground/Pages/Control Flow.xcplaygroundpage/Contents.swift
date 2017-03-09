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




















