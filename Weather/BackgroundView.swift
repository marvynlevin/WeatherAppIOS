//
//  BackgroundView.swift
//  Weather
//
//  Created by levin marvyn on 21/01/2025.
//

import SwiftUI

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            colors: [topColor, bottomColor],
            startPoint: .topLeading, endPoint: .bottomTrailing) // pas d'utilisation de left et right
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    BackgroundView(topColor: .blue, bottomColor: .white)
}
