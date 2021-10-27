//
//  ContentView.swift
//  TrafficLights
//
//  Created by Руслан Штыбаев on 26.10.2021.
//

import SwiftUI


struct ContentView: View {
    @State var buttonName = "Start"
    @State var redLight: Double = 0.3
    @State var yellowLight: Double = 0.3
    @State var greenLight: Double = 0.3
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    var body: some View {
        VStack{
            VStack {
                RedCircleView(alpha: redLight)
                YellowCircleView(alpha: yellowLight)
                GreenCircleView(alpha: greenLight)
            }
                .padding(.top, 100.0)
        Spacer()
            
            Button {
                if buttonName != "Next" {
                 buttonName = "Next"
                }
                
                switch currentLight{
                case .red:
                    redLight = light
                    greenLight = noLight
                    currentLight = .yellow
                case .yellow:
                    yellowLight = light
                    redLight = noLight
                    currentLight = .green
                case .green:
                    greenLight = light
                    yellowLight = noLight
                    currentLight = .red
                }
                   
            } label: {
                Text("\(buttonName)")
                    .background(.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.horizontal, 20.0)
        }
            .buttonStyle(.borderedProminent)
                    
        
        }
    }
    @State var currentLight = CurrentLight.red
    @State var number = 0
    let light: Double = 1.0
    let noLight: Double = 0.3
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    

