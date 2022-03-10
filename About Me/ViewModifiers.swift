//
//  ViewModifiers.swift
//  About Me
//
//  Created by Daniel Jaye Poe (Student) on 3/10/22.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}

struct TitleModifier: ViewModifier {
    let fontSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: .bold, design: .default))
            .foregroundColor(.white)
    }
    
}

struct DescriptionModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(.gray)
    }
    
}

struct YearModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding(.top,0)
    }
    
}

