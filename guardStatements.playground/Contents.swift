/*:
 
 ## Learning Guard and Defer Statements
 
 #### Just another way to really write a save if/else statement
 
 ##### Problem: Is there any better way to write an else-if statement? How do you safely unwrap many optionals?
*/

func checkDrinkingAge() {
    let canDrink = true
    
    if canDrink {
        print("You may enter")
        // More
        // More Code
        // More Code
        
    } else {
        
        // More
        // More Code
        // More Code
        //print("Let me take you to the jail")
    }
    
}

//: Issue with Else-If

// 1. Nested Brackets
// 2. Have to read all

//: Introducing Guard Statements

let iCanDrink = true
func checkDrinkingAges() {
    guard iCanDrink else {
        //iCanDrink == false
        print("You can't drink")
        return //return basically exits out of the function
    }
}

//: ### Unwrapping Optionals

var publicName: String? = "Joe Hill"
var publicPhoto: String? = "Joe's Face"
var publicAge: Int? = 38

//: The Worst Nightmare

func unwrapOneByOne() {
    if let name = publicName {
        if let photo = publicPhoto {
            if let age = publicAge {
                print("Joe: \(name), \(photo), \(age)")
            } else {
                print("Something is missing")
            
            }
        }
    }
}

// Basically unwrapOneByOne is gross. We don't want that. Let's do a better way

//: Slightly Better

func unwrapBetter() {
    if let name = publicName{
        print("Yes name")
    } else {
        print("No Name")
    return
}

    if let photo = publicPhoto {
        print("Yes photo")
    } else {
        print("No photo")
    return
}

    if let age = publicAge {
        print("Yes Age")
    } else {
        print("No Age")
        return
    }
}

//If there is "no Name", "no photo", or "no age" it's going to bail out of this code

//: Ok, lets do Guard Statement

func unwrapOnebyOneWithGuard() {
    guard let name = publicName else {
        print("Name missing")
        return
    }
    
    guard let photo = publicPhoto else {
        print("Photo missing")
        return
    }
    
    guard let age = publicAge else {
        print("Age missing")
        return
    }
    print(name)
    print(photo)
    print(age)
}

//: Single Line of Code, Baby

func unwrap() {
    if let name = publicName, let photo = publicPhoto, let age = publicAge {
        print("Your name is \(name). I see your face right here, \(photo), you are \(age)")
    } else {
        //if any one of those is missing
        print("Something is missing")
    }
}

//The only downside is if there is something missing, you're not going to know what it is. It doesn't specify what needs to be fixed. But that's a simple debugging technique away to see what is missing really. 

func unwrapWithGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        //one or two of the variables contain "nil"
        print("Something is missing")
        return
    }
    
    print("Your name is \(name). I see your face right here, \(photo), you are \(age)")
    // Animation Logic
    // Networking
    // More Code, but still zen
}

//: ###Introducint Defer Statement
//: Defer Statement: Put off (an action or event) to a later time; postpone. In Swift, it will execute a block of code until the current scope (loop, method, ect) exits.

for i in 1...3 {
    defer {print ("Deferred \(i)") }
    print("first \(i)")
}










