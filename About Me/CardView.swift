//
//  CardView.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/7/22.
//

import SwiftUI

struct CardView: View {
    
    let image: Image
    let title: String
    let description: String
    let year: String?
    let url: String?
    
    var body: some View {
        if url != nil {
            Link(destination: URL(string: url!)!) {
                HStack(alignment: .center) {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(.trailing, 5)
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .modifier(TitleModifier(fontSize: 26))
                        Text(description)
                            .modifier(DescriptionModifier())
                        if year != nil {
                            Text(year!)
                                .modifier(YearModifier())
                        }
                    }
                    .padding(.trailing, 20)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(red: 32/255, green: 36/255, blue: 38/255))
                .modifier(CardModifier())
                .padding(.all, 10)
            }
        } else {
            HStack(alignment: .center) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.leading, 5)
                    .cornerRadius(50)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .modifier(TitleModifier(fontSize: 26))
                    Text(description)
                        .modifier(DescriptionModifier())
                    if year != nil {
                        Text(year!)
                            .modifier(YearModifier())
                    }
                }
                .padding(.trailing, 20)
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
        CardView(image: Image("hindrance"), title: "osu!", description: "rhythm game", year: "2008",
                 url: "https://osu.ppy.sh")
    }
}
