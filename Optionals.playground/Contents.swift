// Optionals

// 1. Every variable type must be defined (Implicit/Explicit)
// 2. The type is inferred based on the value

// Implicit and Explicit Type

let name: String = "Bob"    //Explicit
let newName = "Bob the Developer" //Implicit

let myAge: Int = 20     //Explicit
let mySisterAge = 14    //Implicit
let myGPA: Double = 3.54    //Explicit

// Fetching Profile Picture

// If could return "URL" or "nothing"
let myFace = "https://..."

// optionals allow for unforseen circumstances. If a 
// URL returns 'nil' that's no good for the program. 
// But if it returns 'nil' and there is a '?' there, Swift
// is allowing you to make that call and is protecting the code 

// Intoducing Options

// Optional Type allows storing nil

let myName: String? = nil
let yourName: String? = "Bob Lee"

let bobAge: Int? = nil
let robAge: Int? = 123
let danAge: Int? = 3


let yourAge = 200

// Optional Rules

// 1. Optionals do not interact with each other
// 2. Convert Optionals to normal types, the process known
// as unwrapping

// Optional Unwrapping

// Forced Unwrapping

let newRobAge = robAge!
let newDanAge = danAge!

//Problem

var image: String? = "My Face"
let normalImage = image!

// Implicit Unwrapping

// Basically this is a conditional statement

let imageFromFacebook: String? = "Bob's Pretty Face"

if let normalImage = imageFromFacebook {
    print(normalImage)
} else {
    print("There is no image")
}








