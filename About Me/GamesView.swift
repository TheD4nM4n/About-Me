//
//  GamesView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct GamesView: View {
    var body: some View {
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            VStack {
                Text("favorite games")
                    .modifier(TitleModifier(fontSize: 26))
                    .padding(.top)
                
                VStack {
                    CardView(image: Image("osu"), title: "osu!", description: "rhythm game" , year: "2008", url: "https://osu.ppy.sh")
                    
                    CardView(image: Image("civv"), title: "sid meier's civilization v", description: "turn based strategy", year: "2010", url: "https://civilization.com/civilization-5/")
                    
                    CardView(image: Image("minecraft"), title: "minecraft", description: "open world sandbox", year: "2011", url: "https://minecraft.net")
                    
                    CardView(image: Image("beatsaber"), title: "beat saber", description: "rhythm game", year: "2018", url: "https://beatsaber.com")
                    
                    CardView(image: Image("astroneer"), title: "astroneer", description: "open world space exploration", year: "2016", url: "https://astroneer.space")
                }
            }
        }
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
