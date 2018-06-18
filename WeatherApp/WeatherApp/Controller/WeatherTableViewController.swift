//
//  WeatherTableViewController.swift
//  WeatherApp
//
//  Created by John on 6/12/18.
//  Copyright © 2018 John. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherTableViewController: UITableViewController, UISearchBarDelegate, CLLocationManagerDelegate {
    
    // MARK: var(s)
    var forecastData = [Weather]()
    var locationManager: CLLocationManager!
    var clLocation: CLLocation!
    
    // MARK: @IBOutlet(s)
    @IBOutlet weak var searchBar: UISearchBar!
    
    // viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        updateWeatherForLocation(location: "New York")
    }
    
    // viewDidAppear()
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        locationManager = CLLocationManager()
        locationManager.delegate = self as! CLLocationManagerDelegate
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        checkCoreLocationPermission()
        locationManager.requestLocation()
    }
    
    // checkCoreLocationPermission()
    func checkCoreLocationPermission() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        } else if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        } else if CLLocationManager.authorizationStatus() == .restricted {
            // or alert
            print("Unauthorized to use location service!")
        }
    }
    
    // MARK: CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        clLocation = locations.last
        locationManager.stopUpdatingLocation() // stopUpdatingLocation() used to save battery
    }
    
    // searchBarSearchButtonClicked()
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        if let locationString = searchBar.text, !locationString.isEmpty {
            updateWeatherForLocation(location: locationString)
        }
    }
    
    // updateWeatherForLocation()
    func updateWeatherForLocation(location: String) {
        CLGeocoder().geocodeAddressString(location) { [weak self] (placemarks: [CLPlacemark]?, error: Error?) in
            if error == nil {
                if let location = placemarks?.first?.location {
                    Weather.forecast(withLocation: location.coordinate, completion: { (results: [Weather]?) in
                        if let weatherData = results {
                            self?.forecastData = weatherData
                            
                            DispatchQueue.main.async {
                                self?.tableView.reloadData()
                            }
                        }
                    })
                }
            }
        }
    }

    // MARK: - Table view data source
    
    // numberOfSections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return forecastData.count
    }
    
    // numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // titleForHeaderInSection
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let date = Calendar.current.date(byAdding: .day, value: section, to: Date())
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MMMM dd, yyyy"
        
        return dateFormater.string(from: date!)
    }
    
    // cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let weatherObject = forecastData[indexPath.section]
        cell.textLabel?.text = weatherObject.summary
        cell.detailTextLabel?.text = "\(Int(weatherObject.temperature)) °F"
        cell.imageView?.image = UIImage(named: weatherObject.icon)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

}
