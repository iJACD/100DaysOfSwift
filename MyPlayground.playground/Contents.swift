//***FUNCTIONS LET US REUSE CODE WITHOUT REPEATING OURSELVES***

//variadic function
func myfunc(str: String...) { //triple elipsis allows for an array of items separated by ',' passed of the defined type
    for s in str {
        print("\(s)")
    }
}

func myVariadic(int: [Int]...) {
    print(true)
}

// cannot be passed as an array: myVariadic(int: [[2], [3, 2])

myfunc(str: "hello", "world")

//throws keyword for error handling in functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password123")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
/*All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.
*/

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum) //variable myNum value has been changed by passing it to the function
