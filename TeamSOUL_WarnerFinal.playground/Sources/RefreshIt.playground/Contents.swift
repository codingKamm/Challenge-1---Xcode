import Foundation
import SwiftUI


func refreshThis() {
    //Section Won [w/ Combine -- ViewModel:] of https://maheshsai252.medium.com/updating-swiftui-view-for-every-x-seconds-559360ce3b4a
    class UpdaterViewModel: ObservableObject {
        @Published var index: Int = 0
        @Published var now: Date = Date()
        
        var timer: Timer?
        init() {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                self.refresh()
            })
        }
        deinit {
            timer?.invalidate()
        }
        func refresh() {
            index += 1
            now = Date()
        }
    }// End of Section Won
    
    //Section Too of https://maheshsai252.medium.com/updating-swiftui-view-for-every-x-seconds-559360ce3b4a
    struct Updater: View {
        @State var start = Date()
        @StateObject var updaterViewModel = UpdaterViewModel()
        var body: some View {
            VStack {
                Text("\(updaterViewModel.index)")
                
                Text("\(start)")
                
                Text("\(updaterViewModel.now)")
            }
            
        }
    }// End of Section Too
    
    //Section Tree - With TimelineView
    struct UpdaterView: View {
        var body: some View {
            TimelineView(.periodic(from: .now, by: 1.0)) { timeline in
                BeginCounting(now: timeline.date)
            }
        }
    }
    
    
    struct BeginCounting: View {
        @State var index = 0
        var now: Date
        @State var start: Date = Date() // Keep constant everytime
        var body: some View {
            VStack {
                
                //Relative representation without now
                Text("\(start.formatted(.relative(presentation: .numeric)))")
                
                //Relative representation with now
                if now > start {
                    Text("\((start..<now).formatted())")
                    
                    Text("\((start..<now).formatted(.timeDuration))")
                }
                
                
                Text("\(start) \n\(now)")
            }
            .onChange(of: now) { _ in
                index += 1
            }
        }
    }// End of Section Tree
    
    //Section Fo'
    struct InLineView: View {
        
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        
        @State var index = 0
        var body: some View {
            VStack {
                Text("\(index)")
            }.onReceive(timer, perform: { _ in
                print("updating")
                index += 1
            })
        }
    }// End of Section Fo'
}
