/* Defining constants and variables that keep track of important info in my story
    - some values are variable and some values are constant
    - how does the story change if isWolfHungry is set to false instead of true?
 */

// Arrays
let storyTitle = "The Three Little Pigs"
var pigs = ["Pig1", "Pig2", "Pig3"]
let houseMaterials = ["Straw", "Sticks", "Bricks"]
// Arrays

let villain = "The Big Bad Wolf"
var isWolfHungry = true
var currentHouseIndex = 0
var numberOfPigs = 3
var isWolfAlive = true

/* All of the functions that make up the story
    - tellStory() is where I build the structure of my story. I'm calling a series of different functions that serve almost like the different "chapters" of the story
    - some functions like letMeIn() are repeating text that gets said multiple times in the story
    - some functions like devourPig() change some of the variables of the story and affect how the story runs
 */
func tellStory() {
    introduction()
    buildHouses()
    introduceVillain()

    while isWolfHungry {
        visitHouse()
    }

    theEnd()
}

func introduction() {
    print(storyTitle)
    print("Our story begins with three little pigs inheriting a fortune from their mother and deciding to build houses.")
}

func buildHouses() {
    for index in 0..<pigs.count {
        print("\(pigs[index]) built a house made of \(houseMaterials[index])")
    }
}

func introduceVillain() {
    print("Nearby there lived a dastardly beast known as \(villain)")
    
    if isWolfHungry {
        print("\(villain) was starving and heard that there were three little pigs that just moved to the forest so he decided to pay their houses a visit")
    } else {
        print("\(villain) was feeling pretty stuffed and lethargic. Rather than find some tasty pigs to eat, he decided to stay at home, brew a nice cup of coffee, and do the New York Times crossword puzzle.")
    }
}

func visitHouse() {
    print("\(villain) approached the house made of \(houseMaterials[currentHouseIndex]) and knocked on the door")
    letMeIn()
    noNoNo()
    huffAndPuff()
}

func letMeIn() {
    print("\(villain) said \"Little pig! Little pig! Let me in! Let me in!\"")
}

func noNoNo() {
    print("The pig replied: \"No! No! No! Not by the hairs on my chinny chin chin\"")
}

func huffAndPuff() {
    print("Then I'll huff and I'll puff and I'll blow your house down!")
    
    var numberOfHuffs = 0
    
    for number in 1...10 {
        numberOfHuffs += 1
        if number.isMultiple(of: 2) {
            print("Puff")
        } else {
            print("Huff")
        }
    }
    
    if numberOfHuffs >= 10 && houseMaterials[currentHouseIndex] != "Bricks" {
        print("\(villain) blew down the house and devoured \(pigs[currentHouseIndex])")
        devourPig()
    } else {
        print("\(villain) was unable to blow down the house!")
        climbDownChimney()
    }

}

func devourPig() {
    numberOfPigs -= 1
    isWolfHungry = Bool.random()
    if isWolfHungry {
        currentHouseIndex += 1
        print("\(villain) decided he was still hungry and decided to move on to the next house")
    } else {
        print("\(villain) was now full and decided to head home to finish some chores around the house.")
    }
}

func climbDownChimney() {
    print("\(villain) climbed down the chimney and landed directly in a pot of boiling water")
    isWolfHungry = false
    isWolfAlive = false
}

func theEnd() {
    print("\(numberOfPigs) little pigs lived happily ever after.")
    print("THE END!")
}

// This is where the function gets 'called' and the code actually gets executed
tellStory()
