//
//  TemperatureConverterView.swift
//  GuessingGameCS
//
//  Created by Jerry Dai on 2021-12-02.
//

import SwiftUI

struct TemperatureConverterView: View {
    @State var Temperature:Double = -5.0
    var Fahrenheit: Double {
        return Temperature * (9/5) + 32
    }

    var body: some View {
        VStack{
        
            Text ("Celsius")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing, 300)
                .padding(.top, 30)
            
        
            
            Slider(value: $Temperature,
                   in: -50...50,
                   step: 1.0,
                   label: {
                Text("Temperature")
            },
                   minimumValueLabel: {
                Text("-50℃")
            },
                   maximumValueLabel: {
                Text("50℃")
            })
                .padding()
            
            Text ("\(String(format: "%.0f", Temperature))℃")
                .fontWeight(.bold)
            
            
            Text("Fahrenheit")
                .font(.title2)
                .bold()
                .padding(.trailing, 260)
                .padding(.top, 30)
            
            Text("\(Fahrenheit)℉")
                .fontWeight(.bold)
                .padding()
            
            //Compare the user's current Guess to the target
            if (Temperature <= 0) {
               Text ("Dress Warmly!")
                    .italic()
                    .font(.title2)
                    .padding()
            }
            
            else if (Temperature > 0) {
                Text ("Dress Cooler!")
                    .italic()
                    .font(.title2)
                    .padding()
            }
     
            Spacer()
            
        }
        .navigationTitle("Temperature Converter")
    }
       
}

struct TemperatureConverterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        TemperatureConverterView()
    }
    }
}
