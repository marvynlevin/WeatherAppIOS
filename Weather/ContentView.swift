//
//  ContentView.swift
//  Weather
//
//  Created by levin marvyn on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // permet de superposer les éléments
        ZStack {
            
            Color.blue
                .edgesIgnoringSafeArea(.all) // .bottom .top
            
            // aligner verticalement
            VStack {
                Text("Etupes, FR")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("2°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                
                
                // aligner horizontalement
                HStack {
                    VStack {
                        Text("NOM")
                            .font(.title2)
                            .foregroundStyle(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("20°")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

// switfUI utilise plus des struct que les class
struct WeatherDayView: View {
    var body: some View {
        
    }
}

#Preview {
    ContentView()
}
