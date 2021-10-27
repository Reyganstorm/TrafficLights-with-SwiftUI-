//
//  RedCircleView.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 27.10.2021.
//

import SwiftUI

struct RedCircleView: View {
    @State var alpha: Double
    
    var body: some View {
        ColorCircleView(color: .red, alpha: alpha)
    }
}

struct RedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        RedCircleView(alpha: 0.3)
    }
}
