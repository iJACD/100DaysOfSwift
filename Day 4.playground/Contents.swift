import Cocoa

var str = "Hello, playground"

//for loops: for in
// can use _ operator if you don't need to assign value in loop to a variable

var count = 1...6

for randomVariableName in count {
    print(randomVariableName)
}

for _ in count {
    print("Hi ho")
}


//while vs repeat loop
//repeat will always run atleast once since the condition is at the end

while false {
    print("pokemon")
}

repeat {
    print("pokemon")
} while false

//keyword 'break' exits loop at any time
outerLoop: for i in 1...10 {
    innerLoop: for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
//to skip items you use the key word 'continue'
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

