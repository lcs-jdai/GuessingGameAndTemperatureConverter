//
//  ContentView.swift
//  GuessingGameCS
//
//  Created by Jerry Dai on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Guess")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("button was pressed")
            }, label: {
                Text("Submit Guess")
            })
            .buttonStyle(.bordered)
            
            Spacer()
                
            }
        .navigationTitle("Guessing Game")
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
