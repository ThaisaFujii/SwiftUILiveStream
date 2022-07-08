//
//  ContentView.swift
//  SwiftUILiveStream
//
//  Created by Thaisa Fujii on 5/6/22.
//

import SwiftUI
// Struct for the first screen
struct ContentView: View {
    var body: some View {
        // TabView controls everything
        TabView {
            HomeView()
            // modifier
                .tabItem {
                    Image(systemName: "hose.fill")
                    Text("Home")
                }
            ListView()
                .tabItem {
                    Image(systemName: "eyes.inverse")
                    Text("Detail")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

