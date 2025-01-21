//
//  ForecastsViewModel.swift
//  Weather
//
//  Created by levin marvyn on 21/01/2025.
//

import Foundation

// Observable permet de rafraichir (est dispo que avec class)
class ForecastsViewModel: ObservableObject {
    
    // Published permet que si la valeur de forecasts change et non i, les vues seront rafraichient
    @Published private var forecasts: [Temperature] = []
    
    // constructeur
    init() {
        getForecasts()
    }
    
    func getForecasts() {
        var newForecasts: [Temperature] = [
            Temperature(dayOfWeek: "NOM", imageName: "cloud.sun.fill", temp: 0),
            Temperature(dayOfWeek: "TUE", imageName: "cloud.drizzle.fill", temp: 2),
            Temperature(dayOfWeek: "WED", imageName: "cloud.rain.fill", temp: 5),
            Temperature(dayOfWeek: "THU", imageName: "cloud.heavyrain.fill", temp: 1),
            Temperature(dayOfWeek: "FRI", imageName: "cloud.fog.fill", temp: 8)
        ]
        self.forecasts += newForecasts
    }
    
    func reloadTemperature() {
        for i in 0..<forecasts.count {
            forecasts[i].temp += 1;
        }
    }
}
