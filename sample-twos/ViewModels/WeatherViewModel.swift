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
        guard let downloadedWeather: [ List] = await WebService().downloadData(fromURL: "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat={lat}&lon={lon}&appid=$\(Bundle.main.infoDictionary?["API_KEY"] ?? "") ") else {return}
        weatherData = downloadedWeather
    }
}
