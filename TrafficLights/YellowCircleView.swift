//
//  YellowCircleView.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 27.10.2021.
//

import SwiftUI

struct YellowCircleView: View {
    @State var alpha: Double
    
    var body: some View {
        ColorCircleView(color: .yellow, alpha: alpha)
    }
}

struct YellowCircleView_Previews: PreviewProvider {
    static var previews: some View {
        YellowCircleView(alpha: 0.3)
    }
}
