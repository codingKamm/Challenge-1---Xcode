/* The Three Little Pigs - Take 2
 
 This time around I am starting out by defining some structs that make up the characters in the story. When I was doing this the two important questions I asked myself were:
    - What attributes does the character have?
    - What actions does the character do in the story?
 
 Those answers helped define the properties and methods of my structs.
 
 In the Pig struct, I decided to make the 'house' property optional because at the beginning of the story, the pigs do not have houses.
 */
struct Pig {
    var name: String
    var house: HouseMaterial?

    func screamNoNoNo() {
        print("\(name) screamed: \"No! No! No! Not by the hairs on my chinny chin chin\"")
    }
    
    // The mutating keyword here means that this function is going to change or 'mutate' properties of the struct when it runs
    mutating func buildHouse(of material: HouseMaterial) {
        house = material
        print("\(name) built a house made of \(material)")
    }
}

struct Wolf {
    var name: String
    var isHungry = true
    var isAlive = true
    var numberOfHuffsAndPuffs = 0

    func shoutLetMeIn() {
        print("\(name) shouted \"Little pig! Little pig! Let me in! Let me in!\"")
    }
    
    mutating func huffAndPuff() {
        print("Then I'll huff and I'll puff and I'll blow your house down!")
        
        for number in 1...10 {
            numberOfHuffsAndPuffs += 1
            if number.isMultiple(of: 2) {
                print("Puff")
            } else {
                print("Huff")
            }
        }
    }
    
    func devourPig() {
        villain.isHungry = Bool.random()
        if villain.isHungry {
            print("\(villain.name) decided he was still hungry and decided to move on to the next house")
        } else {
            print("\(villain.name) was now full and decided to head home to finish some chores around the house.")
        }
    }
    
    mutating func climbDownChimney() {
        print("\(name) climbed down the chimney and landed directly in a pot of boiling water")
        isHungry = false
        isAlive = false
    }
}

/* Since there are 3 specific options for house materials in the story, I decided to use an enum to represent those options.
 
    - Note I chose to conform my enum to the 'CaseIterable' protocol. Protocols are an advanced topic, but in this case, 'CaseIterable' lets you easily create an array of all of the cases of an enum. You can learn more about it here https://developer.apple.com/documentation/swift/caseiterable
 */
enum HouseMaterial: CaseIterable {
    case straw
    case sticks
    case bricks
}

/* Defining constants and variables that keep track of important info in my story
    - Some values are variable and some values are constant
    - Notice that there are fewer constants and variables defined here this time because I have abstracted out a lot of the prior values into the Wolf and Pig structs
 */
let storyTitle = "The Three Little Pigs"
var pigs = [Pig(name: "Pig 1"), Pig(name: "Pig 2"), Pig(name: "Pig 3")]
var villain = Wolf(name: "The Big Bad Wolf")
var numberOfLivingPigs = 3

/* All of the functions that make up the story
    - tellStory() is where I build the structure of my story. I'm calling a series of different functions that serve almost like the different "chapters" of the story.
    - Many of the functions this time around have been abstracted away into the structs that represent the characters.
 */
func tellStory() {
    introduction()
    buildHouses()
    introduceVillain()

    for pig in pigs {
        if villain.isHungry {
            
            // Since the value of house is optional, I am using if let to safely unwrap it. How would the story change if the buildHouses() function was commented out?
            if let house = pig.house {
                visit(house, of: pig)
            } else {
                print("There is no house to visit!")
            }
        }
    }

    theEnd()
}

func introduction() {
    print(storyTitle)
    print("Our story begins with three little pigs inheriting a fortune from their mother and deciding to build houses.")
}

func buildHouses() {
    // Since I made my HouseMaterial enum conform to the  'CaseIterable' protocol. I can easily make an array of all of the cases using the 'allCases' property
    let houseMaterials = HouseMaterial.allCases
    
    for index in 0..<houseMaterials.count {
        pigs[index].buildHouse(of: houseMaterials[index])
    }
}

func introduceVillain() {
    print("Nearby there lived a dastardly beast known as \(villain.name)")
    
    if villain.isHungry {
        print("\(villain.name) was starving and heard that there were three little pigs that just moved to the forest so he decided to pay their houses a visit")
    } else {
        print("\(villain.name) was feeling pretty stuffed and lethargic. Rather than find some tasty pigs to eat, he decided to stay at home, brew a nice cup of coffee, and do the New York Times crossword puzzle.")
    }
}

func visit(_ house: HouseMaterial, of pig: Pig) {
    print("\(villain.name) approached the house made of \(house) and knocked on the door")
    pig.screamNoNoNo()
    villain.shoutLetMeIn()
    blowDown(house, of: pig)
}

func blowDown(_ house: HouseMaterial, of pig: Pig) {
    villain.huffAndPuff()
    
    // Since the type HouseMaterial is an enum, I can use a switch statement to easily write code that handles all three types of houses
    switch house {
        case .sticks, .straw:
            print("\(villain.name) blew down the house and devoured \(pig.name)")
            villain.devourPig()
        numberOfLivingPigs -= 1
        case .bricks:
            print("\(villain.name) was unable to blow down the house!")
            villain.climbDownChimney()
    }
}

func theEnd() {
    print("\(numberOfLivingPigs) little pigs lived happily ever after.")
    print("THE END!")
}

// This is where the function tellStory() gets 'called' and the code actually gets executed
tellStory()
