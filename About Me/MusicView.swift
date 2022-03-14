//
//  MusicView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
        ZStack {
            Color(red: 51/255, green: 51/255, blue: 51/255)
            
            ScrollView {
                Text("favorite music")
                    .modifier(TitleModifier(fontSize: 26))
                    .padding(.top)
                
                CardView(image: Image("hindrance"), title: "hindrance. (feat. Atlas in Motion)", description: "astra", year: "2022", url: "https://youtu.be/DK4kV7ER-p0")
                
                CardView(image: Image("umeanevenlesstomenow"), title: "u mean even less to me now", description: "lieu", year: "2020", url: "https://youtu.be/OejyzWze9DI")
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
