
//parameters in closures
let multiply = { (num: Int) in
    print("\(num) * \(num) is \(num*num)")
}

let success = {
    print("this was a success")
}
multiply(6)
success()

//return values with closures
let multiplySetValue = { (num: Int) -> String in
    return "This is power \(num*num)"
}
print(multiplySetValue(5))

//closure as parameter

func passClosure(closure: () -> ()) { //can pass '() -> Void' as well
    print("The following is your closure: ")
    closure()
    print("end")
}

func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}

passClosure(closure: success)
//trailing closure syntax, can be done because the closure is the last parameter
passClosure {
    success()
}

goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}
//-------------------------------------------------------------------------------

//shorthand parameter names using $0
func travel(action: (String, String, Int) -> String) {
    let description = action("London", "France", 3)
    print(description)
    print("I arrived!")
}
// $ and positional value represents each param in the closure
travel {
    "I am goig to \($0), then \($1). \($2) times"
}

//returning closure from function example
func makeGreeting(language: String) -> (String) -> Void {
    if language == "French" {
        return {
            print("Bonjour, \($0)!")
        }
    } else {
        return {
            print("Hello, \($0)!")
        }
    }
}

let greetingEng = makeGreeting(language: "English")
let greetingFr = makeGreeting(language: "French")

greetingEng("Paul")
greetingFr("John")
