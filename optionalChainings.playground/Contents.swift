
/*:
# Optional Chainings
## Learn Swift with Bob

### Problem: Why do I see "?" and "!" when accessing methods and properties?
*/

//: Example from UIKit

import UIKit
let labelColor = UILabel().highlightedTextColor?.cgColor

//: #### Design a Class

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
        
    }
    
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}


class Apartment {
    var human: Human?
}

//Initialization

var seoulApartment = Apartment()
seoulApartment.human = Human(name: "Bobby")

seoulApartment.human?.sayHello()

var NYCApartment = Apartment()
NYCApartment.human?.name

//it's going to come up nil because there isn't anything initialized here as far as the human that goes into the NYCApartment
//we're not going to force unwrap here because it isn't recommended
//Optional chaining isn're really chaining. It just keeps referring to one another over and over
//If it's 'nil' then whatever comes after it will be nil because they are related to one another
























