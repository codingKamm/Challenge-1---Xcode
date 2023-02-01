import SwiftUI
import PlaygroundSupport

//struct StoryView: View{
//    var storyArray: [String] = ["Summer of 1972", "it was a great story", "the end"]
//
//
//    @State var story: String = "The MoWest Influence"
//
//
//    // @State allows "story" to be changed by the addToCounter function
//    @State var counter: Int = -1 // @State allows "counter" to be changed by the addToCounter function
//
//
//
//    var body: some View { // this is the thing that is shown in the UI
//        ScrollView {
//            VStack {
//                //Title Page Group
//                Group{
//                    Text(story).padding([.top, .bottom])
//                    Image(uiImage: UIImage(imageLiteralResourceName:"teamsoul.png"))
//                        .resizable()
//                        .scaledToFit()
//                        .cornerRadius(5)
//                        .padding([.top, .bottom])
//                    //Blue Button moves forward
//                    Button(action: {
//
//                    }, label: {
//                        Image(systemName: "arrow.forward")
//                    })
//                    .foregroundColor(Color.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(5)
//                    Text("")
//                }
//
//
//            }
//        }}
//

//struct MoWestView: View {
//    var body: some View {
//        ScrollView(.vertical) {
//            VStack(spacing: 20) {
//                Group{
//Text("teamsoul")
                    //
//                    Text("""
////                     Summer '72
////                     Barry Gordy
////                     takes Motown West
////                     """)
                
//                    Text("2648 West Grand Boulevard 🛫")
//                    Text("Third")
//                    Text("Fourth")
//                    Text("Fifth")
//                    Text("Sixth")
//                    Text("Seventh")
//                    Text("Eighth")
//                    Text("Ninth")
//                }
//                Group{
//                    Text("""
//                     Summer '72
//                     Barry Gordy takes Motown West
//                     """)
//                    Image("HitsvilleUSA")
//                    Text("2648 West Grand Boulevard 🛫")
//                    Text("Third")
//                    Text("Fourth")
//                    Text("Fifth")
//                    Text("Sixth")
//                    Text("Seventh")
//                    Text("Eighth")
//                    Text("Ninth")
////                }
//            }.frame(maxWidth: .infinity) // <1>
//
//        }.font(.largeTitle)
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack{
            Text("""
                MoWest
                🛫 🛬
                """)
                .font(.largeTitle)
                .padding([.top,.bottom])
            Text("Hitsville").font(.title2)
            Text("""
                 Did you know \(didYouKnow) ?
                 """) .padding([.top,.bottom])
               
            
        }
    }
}
enum RandomMotownFact:String, CaseIterable {
    case funFact = "in 1957 Jackie Wilson met Barry?"
    case funFact1 = "the Funk Brothers were Motown's only house band?"
    case funFact4 = "Gordy told Black Enterprise (1974) that motown moved west to get into the action, to be closer to the scene, because they felt the West was certainly the entertainment capital of the future."
    case funFact5 = "Paramount Pictures launched MoWest's  first big screen feature, Lady Sings the Blues?"
    case funFact6 = "Berry Gordy choose to move to LA becasue he personally like the movie industry and the charisma of California?"
    case funFact7 = "Motown's first Asian-American artist was Suzee Ikeda?"
    case funFact8 = "MoWest first release was Tom Clay's 'What the World Needs Now Is Love'?"
    
    static var get: String {
            return allCases.randomElement()!.rawValue
        }
}
let didYouKnow = RandomMotownFact.get
print("Did you know \(didYouKnow)")
    //Code Below is used to help generate image
    PlaygroundPage.current.setLiveView(
        ContentView()
            .frame(width: 1000, height: 600)
    )
    
    

