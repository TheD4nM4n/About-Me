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
            
            ScrollView {
                Text("favorite games")
                    .modifier(TitleModifier(fontSize: 26))
                    .padding(.top)
                
                VStack {
                    CardView(image: Image("osu"), title: "osu!", description: "rhythm game" , year: "2008", url: "https://osu.ppy.sh")
                    
                    CardView(image: Image("civv"), title: "sid meier's civilization v", description: "turn based strategy", year: "2010", url: "https://civilization.com/civilization-5/")
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
