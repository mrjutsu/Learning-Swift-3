// Structs are value types and classes are reference types

struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "David Rosillo", email: "email@example.com", age: 25)

var anotherUser = someUser
anotherUser.email
someUser.email = "another.email@example.com"
anotherUser.email


class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(fullName: String, email: String, age: Int) {
        self.fullName = fullName
        self.email = email
        self.age = age
    }
}
var somePerson = Person(fullName: "Some Guy", email: "some@example.com", age: 20)
var anotherPerson = somePerson

anotherPerson.email
somePerson.email = "new@email.com"
anotherPerson.email
