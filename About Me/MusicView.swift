//
//  MusicView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI
import AVFoundation

var musicViewAudioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            musicViewAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            musicViewAudioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}

struct MusicView: View {
    var body: some View {
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            VStack {
                Text("favorite music")
                    .modifier(TitleModifier(fontSize: 26))
                    .padding(.top)
                
                CardView(image: Image("hindrance"), title: "hindrance. (feat. Atlas in Motion)", description: "astra", year: "2022", url: "https://youtu.be/DK4kV7ER-p0")
                    .onAppear(perform: {
                        playSound(sound: "Boom", type: "wav")
                        musicViewAudioPlayer?.numberOfLoops = -1
                    })
                
                CardView(image: Image("umeanevenlesstomenow"), title: "u mean even less to me now", description: "lieu", year: "2020", url: "https://youtu.be/OejyzWze9DI")
                
                CardView(image: Image("backnfourth"), title: "back n fourth", description: "ericdoa", year: "2021", url: "https://youtu.be/M5yblXlUk9M")
                
                CardView(image: Image("novitality"), title: "ないばいたりてぃ", description: "P丸様。", year: "2021", url: "https://youtu.be/bRx2bU4pEAI")
                
                CardView(image: Image("yourfavoritesidekick"), title: "Your favorite sidekick (feat. 8485)", description: "underscores", year: "2021", url: "https://youtu.be/79Ll_65fbFg")
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
            .previewDevice("iPad (9th generation)")
    }
}
