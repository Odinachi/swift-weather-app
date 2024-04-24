//
//  WeatherViewModel.swift
//  sample-twos
//
//  Created by  Apple on 24/04/2024.
//

import Foundation


@MainActor class WeatherViewModel: ObservableObject {
    @Published var weatherData = [ List]()
    
    func fetchData() async {
        guard let downloadedWeather: [ List] = await WebService().downloadData(fromURL: "https://jsonplaceholder.typicode.com/posts") else {return}
        weatherData = downloadedWeather
    }
}
