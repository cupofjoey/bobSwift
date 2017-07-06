/*:
 ##Intro into Error Handling
 
 ####Problem
 1. Warn your cow-workers the function can cause dangerous results
 2. Understaning of Do-Try break
 3. distinguish between try?, try!, and try
 
 */


func checkHeight(height: Int) {
    if height > 200 {
        print("You are going to hit your head and fall off")
        // Take him/her off from the ride
        // Code ...
        // Seatbelt Tighten
        
    } else if height < 140 {
        print("You might fly into the air")
        
    } else {
        print("Enjoy")
        
    }
}

/*: Problems with Else If Statement */

// Problem 1: Bloated Function
// Problem 2: Modularity

/*: Note
 Error Handling is just another way to write an else-if statement to deal with error messages */

// Design Error
enum HeightError: Error {
    case maxHeight
    case minHeight
}


// Call Function
//func checkHeightError(height: Int) throws {
//    if height > 200 {
//        throw HeightError.maxHeight
//    } else if height < 140 {
//        throw HeightError.minHeight
//    } else {
//        print("Enjoy your ride")
//    }
//}

// Handle with Error

// If you have a func that throws an error, you have to run a 'do try' block

//do {
//    try checkHeightError(height: 240)
//    
//} catch HeightError.maxHeight {
//    print ("Please get out of here")
//} catch HeightError.minHeight {
//    print("You're too short")
//}

// Error handling applies to Object Initialization as well

// Creating Object

// design error

enum NameError: Error {
    case noName
}

class Course {
    var name: String
    
    init(name: String) {
if name == "" {
    throw NameError.noName
} else {
    self.name = name
    print("You've created an object right")
        }
    }
}

do {
    let myCourse = try Course(name: "bob")
} catch NameError.noName {
    print("Please make sure put something")
}

//: Distinguish 'Try?', 'Try!', vs Try

// Try?
// if error not thwon --> optional
// if error thrown --> nil

let newCourse = try? Course(name: "bob the dev")
if let myCourse = newCourse {
    print(myCourse.name)
}

// What if we store nil to newDopeCourse?
let newDopeCourse = try? Course(name: "")

// Try!
let myNewCourse = try! Course(name: "Bobby Lee")
// If you try to store nil here, it will crash. Use 'try?' with nil













