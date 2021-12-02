//
//  ContentView.swift
//  GuessingGameCS
//
//  Created by Jerry Dai on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentGuess: Double = 50.0
    
    let target = Int.random(in: 1...100)
    
    //The feedback to the user as they play
    @State var feedback = ""
    
    var body: some View {
        VStack{
            Slider(value: $currentGuess,
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
                .padding()
            
            Text ("61")
            Text ("\(String(format: "%.0f", currentGuess))")
            
            Button(action: {
                
                //Mkae the user's Guess into an integer
                let currentGuessAsInteger = Int(currentGuess)
                
                //Compare the user's current Guess to the target
                if currentGuessAsInteger < target {
                    //Guess Higher
                    feedback = "Guess Higher Next Time!"
                }
                else if currentGuessAsInteger > target {
                    feedback = "Guess Lower Next Time!"
                }
                else if currentGuessAsInteger == target {
                    feedback = "You Got It!"
                }
            }, label: {
                Text("Submit Guess")
            })
                .buttonStyle(.bordered)
                .padding()
            
            Text ("The super secret target is \(target)")
            
            Text (feedback)
                .italic()
                .padding()
            
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
