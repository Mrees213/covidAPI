//
//  ContentView.swift
//  API
//
//  Created by Morgan w Rees on 2/23/21.
//

import SwiftUI

struct ContentView: View {
    @State private var covidData = [Covid]()
    var body: some View {
        NavigationView {
            List(covidData) { covid in
               NavigationLink(
                   destination: VStack {
                       Text(String(covid.totalConfirmedCases))
                            .padding()
                  Text(String(covid.newlyConfirmedCases))
                      .padding()
             //      Text(String(covid.totalDeaths))
                //        .padding()
          //    Text(String(covid.newDeaths))
              //         .padding()
                //  Text(String(covid.totalRecovered))
                 //     .padding()
                 // Text(String(covid.newlyRecovered))
                      //   .padding()
                   },
                   label: {
                       Text(covid.stats)
                  })
        }
            .navigationTitle("Covid data")
        }
        .onAppear(perform: {
            getCovidData()
        })
    }
    
    func getCovidData() {
        covidData.append(Covid(stats: "stats US", totalConfirmedCases: 1, newlyConfirmedCases: 2, totalDeaths: 0, newDeaths: 1, totalRecovered: 120, newlyRecovred: 3 ))
        covidData.append(Covid(stats: "stats US", totalConfirmedCases: 4, newlyConfirmedCases: 5, totalDeaths: 6, newDeaths: 7, totalRecovered: 8, newlyRecovred: 9))
        covidData.append(Covid(stats: "stats US", totalConfirmedCases: 4, newlyConfirmedCases: 5, totalDeaths: 6, newDeaths: 7, totalRecovered: 8, newlyRecovred: 9))
        let apiKey = "?rapidapi-key=bb1bba71acamsh64f8fbebc90a92bp170eedjsn1a602a34bf3d"
        let query = "https://covid-data
    }
}

struct Covid: Identifiable {
    let id = UUID()
    var stats: String
    var totalConfirmedCases = 0
    var newlyConfirmedCases = 0
    var totalDeaths = 0
    var newDeaths = 0
    var totalRecovered = 0
    var newlyRecovred = 0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
