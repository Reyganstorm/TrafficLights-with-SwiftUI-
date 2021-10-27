//
//  ColorCircleView.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 26.10.2021.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(alpha)
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
            .shadow(color: .white, radius: 10)
            
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .gray, alpha: 0.3)
    }
}
