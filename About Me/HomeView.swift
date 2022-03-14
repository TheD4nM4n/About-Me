//
//  HomeView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowingPopover: Bool = false
    
    func copyDiscordToClipboard() {
        UIPasteboard.general.string = "D4n#2719"
        isShowingPopover = true
    }
    
    var body: some View {
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            ScrollView {
                HStack {
                    VStack {
                        Text("Daniel Poe")
                            .modifier(TitleModifier(fontSize: 64))
                        
                        Text("18; he/him; senior")
                            .font(.system(
                                size: 16,
                                weight: .bold,
                                design: .default)
                            )
                            .foregroundColor(.gray)
                    }
                    
                    Image("portrait")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .padding()
                    
                }
                .padding(.top, 20)
                
                Text("Hi, I'm Daniel! Thank you for visiting my page! I am a senior at the Chambersburg Area Career Magnet School. I love software development, 3D printing, music, video games, and anime! Listed below are some of my social media links. Feel free to follow! You can also check out the other tabs at the bottom to see my favorite games, music, and tv/movies. Have a good day!")
                    .modifier(YearModifier())
                    .padding(.horizontal, 175)
                    .padding(.bottom, 50)
                
                Text("links")
                    .modifier(TitleModifier(fontSize: 26))
                
                CardView(image: Image("instagram"), title: "instagram", description: "@thed4nm4n", year: nil, url: "https://instagram.com/thed4nm4n")
                
                CardView(image: Image("twitter"), title: "twitter", description: "@the_d4n_m4n", year: nil, url: "https://twitter.com/the_d4n_m4n")
                
                Button(action: copyDiscordToClipboard) {
                CardView(image: Image("discord"), title: "discord", description: "D4n#2719", year: nil, url: nil)
                }
                .popover(isPresented: $isShowingPopover) {
                    Text("copied to clipboard!")
                }
                
                CardView(image: Image("youtube"), title: "youtube", description: "Daniel Poe", year: nil, url: "https://www.youtube.com/channel/UCgVgxSEy4pOR7LFT6nPexOg")
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPad (9th generation)")
    }
}
