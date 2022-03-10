//
//  ContentView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            MusicView()
                .tabItem {
                    Image(systemName: "airpods.gen3")
                }
            
            TelevisionView()
                .tabItem {
                    Image(systemName: "video.fill")
                }
            
            GamesView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                }
        }
        .accentColor(.purple)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad (9th generation)")
    }
}
