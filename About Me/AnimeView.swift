//
//  TelevisionView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct AnimeView: View {
    var body: some View {
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            VStack {
                Text("favorite anime")
                    .modifier(TitleModifier(fontSize: 26))
                    .padding(.top)
                
                VStack {
                    CardView(image: Image("demonslayer"), title: "demon slayer", description: "action" , year: "2019", url: "https://demonslayer-anime.com")
                    
                    CardView(image: Image("yourname"), title: "your name.", description: "supernatural", year: "2017", url: "https://www.funimationfilms.com/movie/yourname/")
                    
                    CardView(image: Image("yourlieinapril"), title: "your lie in april", description: "high school romance", year: "2015", url: "https://www.imdb.com/title/tt3895150/")
                    
                    CardView(image: Image("chuunibyou"), title: "love, chunibyo, and other delusions", description: "romance fantasy", year: "2012", url: "https://beatsaber.com")
                    
                    CardView(image: Image("higehiro"), title: "higehiro", description: "romantic comedy", year: "2021", url: "https://myanimelist.net/anime/40938/Hige_wo_Soru_Soshite_Joshikousei_wo_Hirou")
                }
            }
        }
    }
}

struct AnimeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeView()
    }
}
