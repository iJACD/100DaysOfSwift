import Cocoa

//Sets will not return the duplicate values
//Sets store in random order, essentially unordered

let testSet = Set([1,2,4])
let testSet2 = Set([1,2,3,2,1,3])
let testSet3 = Set([1,2,5,2,1,3])

//cannot add or remove values from Tuples
//cannot change type after creation
//can access by name or number
//tuples store values together in a single value

var testTuple = (title: "Hello", size: 9, bool: true)

testTuple.0
testTuple.size
testTuple.bool = false
testTuple.bool

//enum associted values

enum Pokemon {
    case firetype(pokemon: String)
    case watertype(pokemon: String)
    case hp(amount: Int)
    case run(bool: Bool)
}

var me = Pokemon.firetype(pokemon: "Flareon")
Pokemon.hp(amount: 100)

