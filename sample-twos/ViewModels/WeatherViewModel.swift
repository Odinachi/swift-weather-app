import Foundation
import CoreLocation

@MainActor
class WeatherViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
  var latitude: CLLocationDegrees?
  var longitude: CLLocationDegrees?
    @Published var weatherData = [List]()
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Location updated")
        guard let location = locations.first else { return }
       latitude = location.coordinate.latitude
      longitude = location.coordinate.longitude
        Task {
            await fetchData()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location manager failed with error: \(error.localizedDescription)")
    }
    
    func fetchData() async {
        print("Fetching data...")
        guard let latitude = self.latitude, let longitude = self.longitude else {
            print("Latitude or longitude is nil.")
            return
        }
        
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String else {
            print("API key not found.")
            return
        }
        
        let urlString = "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)"
        
        do {
            if let downloadedWeather: [List] = try await WebService().downloadData(fromURL: urlString) {
                self.weatherData = downloadedWeather
            }
        } catch {
            print("Failed to fetch data: \(error.localizedDescription)")
        }
    }
}
