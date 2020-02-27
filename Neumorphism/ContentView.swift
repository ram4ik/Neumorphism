//
//  ContentView.swift
//  Neumorphism
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 255/255, green: 255/255, blue: 235/255)
}

struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.offWhite
            
            VStack(spacing: 30) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.offWhite)
                    .frame(width: 300, height: 300)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                
                Button(action: {
                    print("Button tapped")
                }) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.gray)
                }
                .buttonStyle(SimpleButtonStyle())
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
