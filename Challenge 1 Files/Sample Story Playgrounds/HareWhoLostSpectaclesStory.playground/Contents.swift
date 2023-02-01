// To listen to the original story, go to: https://youtu.be/H_toN5VfWBo?t=79

/// This is the blueprint for the characters in our story, which can generate random lines, characteristics, and return us a spectacle state.
struct Character {
    let name: String
    let characteristics: [String]
    let lines: [String]
    let wearsSpectacles: Bool
    var hasSpectacles: Bool?
    var hasSparePair: Bool?
    
    func spectacleState() -> String {
        if wearsSpectacles {
            if hasSpectacles == true {
                return "had his spectacles, and was just fine."
            } else {
                return "didn't have his spectacles, and was completely helpless."
            }
        } else {
            return "didn't need spectacles, and was just fine."
        }
    }
    
    func randomLine() -> String {
        if let line = lines.randomElement() {
            return "\"\(line)\""
        } else {
            return "<this character has no lines available>"
        }
    }
    
    func randomCharacteristic() -> String {
        if let characteristic = characteristics.randomElement() {
            return "\(characteristic)"
        } else {
            return "clueless"
        }
    }
}

// Initializing the 5 characters of our story.
let hare = Character(name: "Hare", characteristics: ["ostensibly motionless", "trembling with excitement", "completely helpless", "intelligent", "carefree", "a spectacle expert", "completely asleep", "much too big to fit into Kangaroo's pouch"], lines: [], wearsSpectacles: true, hasSpectacles: false, hasSparePair: Bool.random())
let owl = Character(name: "Owl", characteristics: ["resting quietly", "wise", "scowling", "clueless about spectacles", "giving Hare temping ideas", "surprised", "totally asleep"], lines: ["No!", "I have good eye-sight, insight, and foresight. How could an intelligent hare make such a silly mistake?"], wearsSpectacles: false)
let kangaroo = Character(name: "Kangaroo", characteristics: ["hopping mad", "far superior in intelligence to the others", "the leader", "the guru", "clueless about spectacles", "giving Hare temping ideas"], lines: ["The hare has lost his spectacles.", "Hare, you must go in search of the optician.", "I can't send Hare in search of anything!"], wearsSpectacles: true, hasSpectacles: true, hasSparePair: Bool.random())
let newt = Character(name: "Newt", characteristics: ["knowing way too much", "not being stopped by so small a problem", "clueless about spectacles", "giving Hare temping ideas"], lines: ["You can, guru, you can!", "You can send him with owl.", "You can take him in your pouch."], wearsSpectacles: false)
let bee = Character(name: "Bee", characteristics: ["wanting to help", "clueless about spectacles", "giving Hare no ideas"], lines: ["You probably ate them thinking they were a carrot."], wearsSpectacles: true)

// Store our characters in an array, and shuffle them for extra fun.
var characters = [owl, kangaroo, hare, newt, bee]
characters.shuffle()

let randomCharacter1 = characters[0] //Owl, originally
let randomCharacter2 = characters[1] //Kangaroo, originally
let randomCharacter3 = characters[2] //Hare, originally
let randomCharacter4 = characters[3] //Newt, originally
let randomCharacter5 = characters[4] //Bee, originally

/// This is the blueprint for a particular scene, which has a method to return a nice String describing the scene.
struct Scene {
    var location: String
    var nearby: String?
    
    func toString() -> String {
        var string = location
        if let unwrappedNearby = nearby {
            string += unwrappedNearby
        }
        return location
    }
}

// Define the scenes available, so we can use random scenes for extra fun.
let availableScenes = [
    Scene(location: "on a fence"),
    Scene(location: "behind a cloud"),
    Scene(location: "on the grass"),
    Scene(location: "in a stream", nearby: "that flowed by the grass"),
    Scene(location: "close by"),
    Scene(location: "astride a twig", nearby: "of a bush")
]

//Story introduction
print("THIS is the story of the \(randomCharacter3.name) who lost his spectacles!")
print("")

let randomCharacteristic1 = randomCharacter1.characteristics.randomElement() ?? "completely helpless"
print("\(randomCharacter1.name) was \(randomCharacteristic1) while no one was watching.")

let randomCharacteristic2 = randomCharacter1.characteristics.randomElement() ?? "completely helpless"
let randomScene1 = availableScenes.randomElement() ?? Scene(location: "nowhere")
let randomScene2 = availableScenes.randomElement() ?? Scene(location: "nowhere")
print("Sitting \(randomScene1.toString()) one day, he was \(randomCharacteristic2) when suddenly a \(randomCharacter2.name) ran \(randomScene2.toString()).")

print("Now this may not seem strange, but when \(randomCharacter1.name) overheard \(randomCharacter2.name) say (to no one in particular),")
print(randomCharacter2.randomLine())
print("Well, he began to wonder.")
print("")

let randomScene3 = availableScenes.randomElement() ?? Scene(location: "nowhere")
let randomScene4 = availableScenes.randomElement() ?? Scene(location: "nowhere")
print("Presently, the moon appeared \(randomScene3.toString()) and there, lying \(randomScene4.toString()) was \(randomCharacter3.name).")

let randomScene5 = availableScenes.randomElement() ?? Scene(location: "nowhere")
print("And there, \(randomScene5.toString()), a \(randomCharacter4.name).")

let randomScene6 = availableScenes.randomElement() ?? Scene(location: "nowhere")
print("And there, \(randomScene6.toString()), a \(randomCharacter5.name).")
print("")

print("\(randomCharacter3.randomCharacteristic()), the \(randomCharacter3.name) was \(randomCharacter3.randomCharacteristic()).")

print("For \(randomCharacter3.name) \(randomCharacter3.spectacleState())")
print("Where were his spectacles?")

// An array of reasons that a character's spectacles could have gone missing, so we can use a few random ones.
let reasonsSpectaclesCouldBeGone = [
    "Could someone have stolen them?",
    "Has he mislaid them?",
    "Had Bee took them?",
    "Was Owl up to no good?",
    "Was this a dream?"
]
let numberOfReasons = Int.random(in: 2...5)
for _ in 0...numberOfReasons {
    print(reasonsSpectaclesCouldBeGone.randomElement() ?? "Why was there no random element?")
}

print("What was he to do?")
print("")

print("\(randomCharacter5.name) was \(randomCharacter5.randomCharacteristic()), and thinking he had the answer began:")
print(randomCharacter5.randomLine())

print("\(randomCharacter1.randomLine()) interrupted \(randomCharacter1.name), who was \(randomCharacter1.randomCharacteristic()).")
print(randomCharacter1.randomLine())

let randomScene7 = availableScenes.randomElement() ?? Scene(location: "nowhere")
print("But all this time, \(randomCharacter1.name) had been sitting \(randomScene7.toString()), \(randomCharacter1.randomCharacteristic())!!!!")
print("")

print("\(randomCharacter2.name) was \(randomCharacter2.randomCharacteristic()) at this sort of talk.")
print("She thought she was \(randomCharacter2.randomCharacteristic()) compared to the others.")
print("She was their leader, their guru.")
print("She had the answer:")
print(randomCharacter2.randomLine())
print("")

print("But then she realized that \(randomCharacter3.name) \(randomCharacter3.spectacleState())")
print("And so, \(randomCharacter2.name) loudly proclaimed:")
print(randomCharacter2.randomLine())
print("")

print("\(randomCharacter4.randomLine()), shouted \(randomCharacter4.name).")
print(randomCharacter4.randomLine())
print("But \(randomCharacter1.name) was \(randomCharacter1.randomLine()).")
print("\(randomCharacter4.name) was \(randomCharacter4.randomCharacteristic()):")
print(randomCharacter4.randomLine())
print("But alas, \(randomCharacter3.name) was \(randomCharacter3.randomCharacteristic()).")
print("")

print("All this time, it had been quite plain to \(randomCharacter3.name) that the others knew NOTHING about spectacles.")

// Function that generates the end of the story, depending on whether the character wears spectacles, whether they currently have them, and whether they have a spare pair.
func endOfStory(character: Character) {
    print("And as for all their tempting ideas, well \(character.name) didn't a' care.")
    print("The lost spectacles were his own affair!")
    
    if character.wearsSpectacles {
        if character.hasSpectacles != nil {
            if character.hasSpectacles == true {
                print("Just kidding, he was wearing them the whole time 😱")
            } else {
                if character.hasSparePair == true {
                    print("And after all, \(character.name) did have a spare pair 😉")
                } else {
                    print("But \(character.name) didn't even have a spare pair... He was so screwed! 😭")
                }
            }
        } else {
            print("And this whole time, he was debating whether it had been long enough that he could consider the spectacles lost, for insurance purposes 📝")
        }
    } else {
        print("And after all, he didn't even wear spectacles in the first place lulz 🙃")
    }
}

// Call the endOfStory function.
endOfStory(character: randomCharacter3)
