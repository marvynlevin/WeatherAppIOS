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
                    .padding(.bottom, 40) // par défault 10px dans tous les sens
                
                // aligner horizontalement
                HStack (spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "NOM",
                        imageName: "cloud.sun.fill",
                        temperature: 0
                    )
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.drizzle.fill",
                        temperature: 2
                    )
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "cloud.rain.fill",
                        temperature: 5
                    )
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "cloud.heavyrain.fill",
                        temperature: 1
                    )
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "cloud.fog.fill",
                        temperature: 8
                    )
                }
                
                Spacer()
                
                Button {
                    //action à réaliser
                    print("button tapped")
                } label: {
                    Text("Changed Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.title2)
                        .bold()
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        }
    }
}

// switfUI utilise plus des struct que les class
struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
