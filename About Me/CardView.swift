//
//  CardView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}

struct CardView: View {
    let image: Image
    let title: String
    let description: String
    let year: String
    let url: String
    
    var body: some View {
        Link(destination: URL(string: url)!) {
            HStack(alignment: .center) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.all, 5)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 26, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.top, 1)
                    Text(description)
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                    HStack {
                        Text(year)
                            .font(.system(size: 16, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding(.top,0)
                    }
                }.padding(.trailing, 20)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 32/255, green: 36/255, blue: 38/255))
            .modifier(CardModifier())
            .padding(.all, 10)
        }
    }
    
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: Image("osu"), title: "osu!", description: "rhythm game", year: "2008",
                 url: "https://osu.ppy.sh")
    }
}
