//
//  ContentView.swift
//  TeamSOUL
//
//  Created by Cameron Warner on 9/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
            VStack {
                Image(systemName: "airplane")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }}


    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
