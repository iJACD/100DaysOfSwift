import Cocoa


let double1 = 1.0
let int1 = 1


if double1 > Double(int1) {
    print("yes")
} else {
    print("No")
}
//note: you cannot compare int to double

//ternary operators
var pokemon1 = "gengar"
let pokemon2 = "absol"

print(pokemon1 == pokemon2 ? "same pokemon" : "Different pokemon")

var num1 = 1
var num2 = 2

var num3 = num1 > num2 ? 5 : 2

//switch case statments
//fallthrough keyword

let pokemonAttack = "flamethrower"

switch pokemonAttack {
    case "water gun":
        print("not very effective")
    
    case "flamethrower":
        print("super ")
        fallthrough
    default:
        print("effective")
}

//range operators
//...  is inclusive and ..< is up to

switch num1 {
    case 1..<85:
        print("less than 85")
    case 85...100:
        print("more than 85, less than 100")
    default:
        print("More than 100")
}

let nums = 1...3 //closed range

