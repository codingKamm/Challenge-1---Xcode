import SwiftUI
import PlaygroundSupport
import UIKit
import AVFoundation

struct StoryStructure {
    let storyTitle = "Motown Something "
    var majorArtist: Int
    var character = ""
    enum Setting {
        case Detroit, LA
        
    }
    
}
// let slamStorySlam = the one line of code to call story
// functions w/in = chapters
// chapters retrieved from Team SOUL's Miro Story Concept
func slamStorySlam() {
    // motownMusicalHistory
    // currentMusicInDetroit
    // influencesOfCurrentDetroitMusic
    
    // keepingMusicInDetroit
    // TeamSOUL credits
}

//Created w/ Group Sept. 21
struct MotownGroups {
    let groups = "Marvin, Aretha, Michael"
    let nameOfHit = ""
    let yearofHit: Int
    let yearsApartofMotown: String
}
struct MotownSoloArtists {
    let artist = "Marvin, Aretha, Michael"
    let nameOfHit: String
    let yearofHit: Int
    
}
struct Influence {
    let culture: String
    let fashion: String
    let musicStyle: String
    let businessModel: String
}

//Business Model was Loop? *not sure were this came from 🤷🏾‍♂️


struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
        }
    }
}

//Sept. 25 - enum RandomMotownFact is for generating random facts in dialogue
// Retrieved from: https://stackoverflow.com/questions/57273972/how-to-get-random-value-from-struct

// funFact structure = lowercase sentence starter && do not punctuate ending of sentence
enum RandomMotownFact:String, CaseIterable {
    case funFact = "in 1957 Jackie Wilson met Barry"
    case funFact1 = "the Funk Brothers were Motown's only house band?"
    case funFact4 = "motown moved west to get into the action, to be closer to the scene, because we feel the West is certainly the entertainment capital of the future, if it’s not the entertainment capital now, Gordy told Black Enterprise in 1974."
    case funFact5 = "Paramount Pictures launched MoWest's  first big screen feature, Lady Sings the Blues?"
    case funFact6 = "Berry Gordy choose to move to LA becasue he personally like the movie industry and the charisma of California"
    case funFact7 = "Motown's first Asian-American artist was Suzee Ikeda."
    case funFact8 = "MoWest first release was Tom Clay's 'What the World Needs Now Is Love'"
//    case funFact9  = ""
//    case funFact10 = ""
//    case funFact11 = ""
//    case funFact12 = ""
//    case funFact13 = ""
//    case funFact14 = ""
    
    static var get: String {
            return allCases.randomElement()!.rawValue
        }
}
let didYouKnow = RandomMotownFact.get
print("Did you know \(didYouKnow)")


//motownInLa is a var of a true event of Motown moving to LA which is why the Bool is true
var motownInLa = true
// From Kevin's research list Detroit Interview Video...
// var dpsMusicProgram = true
Image("teamsoul")





if motownInLa != true {
    //LEADS TO SECTION 4
    // Fantasy Story.. Drawing more indsutry (music[blues & R&B) to Detroit
    // Influence on Arts, culture, fashion, education, entertainment, and tech
    // Business/ Auto Industry...
    // (Story Stem) One day Detroit became music captial of world
    // var motownInLa = true
    // Back to present day
    // Rebecca story structure (Pixar)
}

func moWest() {
    
}

var supremes = ["Florence Ballard", "Mary Wilson", "Diana Ross", "Betty McGlown"]
let
var earlyMotownArtists = supremes
var majorDetroitArtists = ["Eminem", "Big Sean", "Aaliyah"]
//Popular artists!
var producersFromDetroit = ["J Dilla", "Lamont Dozier and Brian Holland", "Key Wane"]
//Lamont and Brian were Motown producers.




// 4/14/1960: Motown and Tamla Records merged into a new company called "Motown Record Corporation"

enum MotownGenres {
    case WorkshopJazz
    case Soul
}

//enum MotownLabels {
//    case MelodyRecords
//    //Established in 1962
//    case HitsvilleRecords
//    //Established in 1974: Country music
//    case MCRecords
//    //Established in 1977: Continuation of Hitsville Records
//    case WondirectionRecords
//    //Created by Stevie Wonder
//    case MadSoundsRecordings
//    //Hip-hop and rap subsidiary label
//    case WorkshopJazzRecords
//    //Established in 1969
//    case MoJazzRecords
//    //Established in the 1990's, Motown's most successful Jazz label
//    case RareEarthRecords
//    //Established in 1969, rock music (white artists)
//    case ProdigalRecords
//    //Purchased by Motown in 1976, a second Rock subsidiary
//    case MoroccoRecords
//    //Established in 1983, a third Rock subsidiary
//    case DivinityRecords
//    //Established in 1962, a gospel label
//    case BlackForumRecords
//    //Established in 1970, progressive political and pro-civil rights speeches/poetry
//    case NaturalResources
//    //Established 1972 subsidiary for white artists and instrumental bands
//    case MotownLatinoRecords
//    //Established in 1982 for Latino Artists
//}
//
//var motownLabels: MotownLabels
//var decade = 1900
//
//switch motownLabels {
//case: any 1960...1970
//    print (MotownLabels.HitsvilleRecords)
//default:
//    print ("Label does not exist. ")
//}


// Motown Labels (Change the year!)

var year = 1970

if (year > 1970) {
    print("Natural Resources (1972)\nHitsville Records (1974)\nProdical Records (1976)\nMC Records (1977)\nMotown Latino Records (1982)\nMorocco Records (1983)\nWondirection Records (1983)\nMoJazz Records (1992)\nMad Sounds Recordings (1993)\n")
}

else if (year <= 1970) {
    print("Divinity Records (1962)\nMelody Records (1962)\nWorkshop Jazz Records (1969)\nRare Earth Records (1969)\nBlack Forum Records (1970)\n")
}

else {
    print("There were no new record labels established by Motown at this time.")
}

// Music Player






// Music: imported AVFoundation
//https://tidal.com/browse/track/5768549
// <div style="position: relative; padding-bottom: 100%; height: 0; overflow: hidden; max-width: 100%;"><iframe src="https://embed.tidal.com/tracks/5768549?layout=gridify" frameborder="0" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 1px; min-height: 100%; margin: 0 auto;"></iframe></div>

//var player: AVAudioPlayer?
//
//func playSound() {
//    guard let url = Bundle.main.url(forResource: "soundName", withExtension: "mp3") else { return }
//
//    do {
//        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//        try AVAudioSession.sharedInstance().setActive(true)
//
//        /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
//        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//        /* iOS 10 and earlier require the following line:
//        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
//
//        guard let player = player else { return }
//
//        player.play()
//
//    } catch let error {
//        print(error.localizedDescription)
//    }
//}
    
//    () {
//    if decade > 1960...1970 {
//
//
//    }
//}
// Great Migration for Ford's jobs lead to Motown
//Ever Sicne Then (Present Day...)
// Smaller Producers
// Home Productions
// Struggles


//Moral (End)
//Ties back to conditional 'if'

//enum MotownLegends {
//    case Michael, Marvin, Aretha, Diana
//}

//Multiple perspectives (3x = enum)
//Maybe break forth wall
// Take three pople w/ multi. prespectives (It's a wonderful life)
// Main Character w/ Angel & Devil on shoulders
// Barry (Candyland?)
//Harry Potter: Hogwarts, Sorting Hat (different bands or solo acts)
//Scruge Story of Christmas Ghosts

//Canvas Popup


