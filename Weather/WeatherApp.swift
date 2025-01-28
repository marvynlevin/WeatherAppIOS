//
//  WeatherApp.swift
//  Weather
//
//  Created by levin marvyn on 14/01/2025.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ForecastsViewModel()) // exécution avant ContentView
        }
    }
}
