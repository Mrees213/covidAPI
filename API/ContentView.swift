//
//  ContentView.swift
//  API
//
//  Created by Morgan w Rees on 2/23/21.
//

import SwiftUI

struct ContentView: View {
    @State private var covidData = [covid]()
    var body: some View {
        NavigationView {
            List(covidData) {covid in
                NavigationLink(
                    destination: Text(covid.punchline)
                        .padding(),
                    label: {
                        Text(covid.setup)
                    })
            }
            .onAppear(perform: {
                       getcovidData()
                   })

            .navigationTitle("Covid data")
        }
    }
        func getcovidData() {
                covidData.append(covid(setup: "Covid data",
                                  punchline: "Because DEC 25 = OCT 31"))
             covidData.append(covid(setup: "How did the programmer die in the shower?",
                                  punchline: "She followed the shampoo bottle instructions: Lather. Rinse. Repeat."))
               covidData.append(covid(setup: "There are 10 types of people in the world",
                                  punchline: "Those who understand binary and those who don’t."))
            }
    
}

struct covid: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
