import SwiftUI
import PlaygroundSupport


struct ContentView: View {
    var body: some View {
VStack{
    HStack { //Title words spread in a HStack
                Text ("func")
                    .foregroundColor(.pink)
                    .font(.system(.largeTitle, design: .rounded))
                    .padding([.top,.bottom])
                
                Text ("sectionThree")
                    .foregroundColor(.mint)
                    .font(.system(.largeTitle, design: .rounded))
                    .padding([.top,.bottom])
                    .font(.custom("Georgia", size: 24, relativeTo: .headline))
                    
                
                Text("(moWest){")  //Title
//                    .foregroundColor(.mint)
                    .font(.system(.largeTitle, design: .rounded))
                    .padding([.top,.bottom])
                    .font(.custom("Georgia", size: 24, relativeTo: .headline))
            }//End Hstack 1
            
HStack {
                Text ("🛫")
                    .font(.largeTitle
                        .weight(.bold))
                    .multilineTextAlignment(.center)
    VStack {
                Image(uiImage: UIImage(imageLiteralResourceName:"HitsvilleFinal.jpg"))
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 200, height: 200)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Text("Detroit, MI")
                        .font(.caption2)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                
                
                Text("to")
                    .font(.title2)
                    .padding(20)
                    .multilineTextAlignment(.center)
            
    VStack {
                Image(uiImage: UIImage(imageLiteralResourceName:"moWest.jpg"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipped()

                Text("Los Angeles, CA")
                    .bold()
                    .font(.caption2)
                    .multilineTextAlignment(.center)
                    
            
            }// End of VStack on right
                Text ("🛬")
                    .font(.largeTitle
                        .weight(.bold))
                    .multilineTextAlignment(.center)
                    .padding()
    
            }//End of HStack 2
            
                Text("Did you know \(didYouKnow)")
                    .multilineTextAlignment(.center)
            
                Text("}")  //Title
                    .font(.system(.largeTitle, design: .rounded))
                    .padding(.bottom)
                    .font(.custom("Georgia", size: 24, relativeTo: .headline))
        }
    }
}
enum RandomMotownFact:String, CaseIterable {
    case funFact = "the early Motown album covers did not feature photos of its young stars because Black faces might offend or limit sales to pop audiences."
    case funFact2 = "that MoWest's LA office was on Sunset & Vine and a studio in Romaine Street?"
    case funFact3 = "Gordy told Black Enterprise (1974) that Motown moved west because they felt the West was certainly the entertainment capital of the future."
    case funFact4 = "Paramount Pictures launched MoWest's first big screen feature, 'Lady Sings the Blues'?"
    case funFact5 = "MoWest released 10 albums and 40 singles, many of which failed to make it beyond the promo stage?"
    case funFact6 = "Motown's first Asian-American artist was Suzee Ikeda?"
    case funFact7 = "MoWest first release was Tom Clay's 'What the World Needs Now Is Love'?"
    
    static var get: String {
        return allCases.randomElement()!.rawValue
    }
}
let didYouKnow = RandomMotownFact.get
print("Did you know that: \(didYouKnow)")


//Code Below is used to help generate image
PlaygroundPage.current.setLiveView(
    ContentView()
        .frame(width: 700, height: 700)
)


            // Fact Resources
//Kun, Josh (2020). When Detroit met Sunset Boulevard. Retrieved from  https://www.getty.edu/news/when-detroit-met-sunset-boulevard/
// Williams, AJ (2011). Motown after Detroit. Retrieved from https://michiganchronicle.com/2013/12/05/motown-after-detroit/?amp=1
//Thomson, G (2011). Mowest, mo' problems: the glorious failure of Motown's Californian outpost. Retrieved from https://www.theguardian.com/music/2011/jun/30/mowest-motown-california
