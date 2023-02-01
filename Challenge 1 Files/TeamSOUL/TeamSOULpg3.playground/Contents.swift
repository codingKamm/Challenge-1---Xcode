import UIKit
import SwiftUI
import PlaygroundSupport

struct StoryView: View{
    var storyArray: [String] = ["Summer of 1972", "it was a great story", "the end"]
    
    
    @State var story: String = "The MoWest Influence"
    
    
    // @State allows "story" to be changed by the addToCounter function
    @State var counter: Int = -1 // @State allows "counter" to be changed by the addToCounter function
    
    
    
    var body: some View { // this is the thing that is shown in the UI
        ScrollView {
            VStack {
                //Title Page Group
                Group{
                    Text(story).padding([.top, .bottom])
                    Image(uiImage: UIImage(imageLiteralResourceName:"teamsoul.png"))
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                        .padding([.top, .bottom])
                    //Blue Button moves forward
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.forward")
                    })
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
                    Text("")
                }
                
                
            }
        }}
    
    
    struct MoWestView: View {
        var body: some View {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    Group{
                        Text("teamsoul")
                        
                        Text("""
                    Summer '72
                    Barry Gordy
                    takes Motown West
                    """)
                        
                        Text("2648 West Grand Boulevard 🛫")
                        Text("Third")
                        Text("Fourth")
                        Text("Fifth")
                        Text("Sixth")
                        Text("Seventh")
                        Text("Eighth")
                        Text("Ninth")
                    }
                    Group{
                        Text("""
                     Summer '72
                     Barry Gordy takes Motown West
                     """)
                        Image("HitsvilleUSA")
                        Text("2648 West Grand Boulevard 🛫")
                        Text("Third")
                        Text("Fourth")
                        Text("Fifth")
                        Text("Sixth")
                        Text("Seventh")
                        Text("Eighth")
                        Text("Ninth")
                        //                }
                    }.frame(maxWidth: .infinity) // <1>
                    
                }.font(.largeTitle)
            }
        }
        //Code Below is used to help generate image
        PlaygroundPage.current.setLiveView(
            MoWestView()
                .frame(width: 1000, height: 600)
        )
        
        
    }
}
