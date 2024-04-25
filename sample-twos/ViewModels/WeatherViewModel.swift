import Foundation
import CoreLocation
import CoreLocationUI



@MainActor
class WeatherViewModel:  ObservableObject {
    
   
    @Published var weatherData = [List]()
    
    
  
    
    func fetchData() async {
        print("Fetching data...")
//        guard let latitude = self.latitude, let longitude = self.longitude else {
//            print("Latitude or longitude is nil.")
//            return
//        }
        
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String else {
            print("API key not found.")
            return
        }
        
//        let urlString = "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)"
        let urlString = "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=2002&lon=33&appid=\(apiKey)"
        
        do {
            if let downloadedWeather: [List] = try await WebService().downloadData(fromURL: urlString) {
                self.weatherData = downloadedWeather
            }
        } catch {
            print("Failed to fetch data: \(error.localizedDescription)")
        }
    }
}


//class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
//    let manager = CLLocationManager()
//
//    @Published var location: CLLocationCoordinate2D?
//
//    override init() {
//        super.init()
//        manager.delegate = self
//        requestLocation()
//       
//    }
//
//    func requestLocation() {
//        manager.requestWhenInUseAuthorization()
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print("KKKKKKKKK kkk ")
//        
//        location = locations.first?.coordinate
//    } 
//    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//            print("error:: \(error.localizedDescription)")
//       }
//}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    @Published var location: CLLocationCoordinate2D?

    override init() {
        super.init()
        manager.delegate = self
    }

    func requestLocation() {
        manager.requestLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
               print("error:: \(error.localizedDescription)")
          }
}
