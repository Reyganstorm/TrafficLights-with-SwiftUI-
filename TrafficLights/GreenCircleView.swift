//
//  GreenCircleView.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 27.10.2021.
//

import SwiftUI

struct GreenCircleView: View {
   @State var alpha: Double
    
    var body: some View {
        ColorCircleView(color: .green, alpha: alpha)
    }
}

struct GreenCircleView_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircleView(alpha: 0.3)
    }
}
