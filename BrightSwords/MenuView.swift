//
//  MenuView.swift
//  BrightSwords
//
//  Created by Пазин Даниил on 16.10.2021.
//

import SwiftUI

struct MenuView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var isPresented = false
    
    let pearlGray = Color("PearlGray", bundle: .main)
    private let midnightCityLinearGradient = LinearGradient(gradient: CustomGradient.midnightCityGradient(), startPoint: .bottom, endPoint: .top)
    private let zincLinearGradient = LinearGradient(gradient: CustomGradient.zincGradient(), startPoint: .bottom, endPoint: .top)
    
    var body: some View {
        VStack {
            Button(action: playButtonTapped) {
                Text("TAP TO PLAY")
                    .font(.headline)
                    .foregroundColor(pearlGray)
            }
            .padding()
            .overlay(Capsule().strokeBorder(metalAngularGradient(), lineWidth: 5, antialiased: true))
            .fullScreenCover(isPresented: $isPresented, content: ContentView.init)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorScheme == .dark ? midnightCityLinearGradient : zincLinearGradient)
    }
    
    private func metalAngularGradient() -> AngularGradient {
        let colors: [Color] = [.white, .gray, pearlGray]
        let repeatingColors = Array(repeating: colors, count: 16).flatMap { $0 }
        return AngularGradient(colors: repeatingColors, center: .center, startAngle: .degrees(0), endAngle: .degrees(360))
    }
    
    private func playButtonTapped() {
        isPresented.toggle()
    }
}

#if DEBUG
struct MenuView_Previews : PreviewProvider {
    static var previews: some View {
        MenuView()
            .preferredColorScheme(.light)
    }
}
#endif
