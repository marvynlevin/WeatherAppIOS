//
//  ContentView.swift
//  Weather
//
//  Created by levin marvyn on 14/01/2025.
//

import SwiftUI

struct ContentView: View { // struct créé des objets plus léger (plus optimisé)
    
    @State var isNight: Bool = false // state permet de redessiner dès que isNight change
    
    var body: some View {
        
        // permet de superposer les éléments
        ZStack {
            
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: .white)
                        
            // aligner verticalement
            VStack {
                
                // aligner horizontalement
                HStack {
                    Text("Etupes, FR")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                    
                    Button {
                        reloadTemperature()
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }

                Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
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
                    WeatherDayView(temperature: forecasts[0])
                    WeatherDayView(temperature: forecasts[1])
                    WeatherDayView(temperature: forecasts[2])
                    WeatherDayView(temperature: forecasts[3])
                    WeatherDayView(temperature: forecasts[4])
                }
                
                Spacer()
                
                Button {
                    // action à réaliser
                    // print("button tapped")
                    isNight.toggle() // passe de true a false et inversement
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
    
    var temperature: Temperature
    
    // var dayOfWeek: String
    // var imageName: String
    // var temperature: Int
    
    var body: some View {
        VStack {
            Text(temperature.dayOfWeek)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(systemName: temperature.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            
            Text("\(temperature.temp)°")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
