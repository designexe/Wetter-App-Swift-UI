//
//  ContentView.swift
//  Shared
//
//  Created by Tim Irrgang on 29.01.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color.init("lightBlue")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Hamburg")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing:10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    
                    Text("32°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom,60)
                    
                    
                    HStack(spacing:20){
                        WeatherDayView(dayOfWeek: "MO",
                                       weatherIconName: "sun.max.fill",
                                       temperatur: 32)
                        
                        WeatherDayView(dayOfWeek: "DI",
                                       weatherIconName: "cloud.rain.fill",
                                       temperatur: 32)
                        
                        WeatherDayView(dayOfWeek: "MI",
                                       weatherIconName: "wind",
                                       temperatur: 32)
                        
                        WeatherDayView(dayOfWeek: "MON",
                                       weatherIconName: "sun.max.fill",
                                       temperatur: 32)
                        
                        WeatherDayView(dayOfWeek: "MON",
                                       weatherIconName: "cloud.sleet.fill",
                                       temperatur: 32)
                        
                    }

                Spacer()
                
                Button{print("HAllo")} label:{Text("Button")}
                

                

                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    var dayOfWeek:String
    var weatherIconName:String
    var temperatur:Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: weatherIconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("\(temperatur)°")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.white)
            
        }
    }
}
