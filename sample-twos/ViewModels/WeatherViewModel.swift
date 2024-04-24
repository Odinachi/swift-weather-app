import Foundation
import CoreLocation

@MainActor
class WeatherViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
    @Published var latitude: CLLocationDegrees?
    @Published var longitude: CLLocationDegrees?
    @Published var weatherData = [List]()
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.requestLocation()
    }
    
    func fetchData() async {
        
        guard let location = locationManager.location else { return }
        
        self.latitude = location.coordinate.latitude
        self.longitude = location.coordinate.longitude
        
        guard let latitude = self.latitude, let longitude = self.longitude else {
            print("Latitude or longitude is nil.")
            return
        }
        
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String else {
            print("API key not found.")
            return
        }
        
        let urlString = "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)"
        
        if let downloadedWeather: [List] = await WebService().downloadData(fromURL: urlString) {
            weatherData = downloadedWeather
        }
    }
    
}
