//
//  FormViewController.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import UIKit
import MapKit

class FormViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UISearchBarDelegate {

    let manager = CLLocationManager()
    
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.requestWhenInUseAuthorization()
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        manager.requestLocation()
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        let searchText = searchBar.text
        CLGeocoder().geocodeAddressString(searchText!, completionHandler: { placemark, error in
            // O placemark é uma lista, onde pegamos a primeira posição
            let location = placemark![0].location
            let region = MKCoordinateRegionMakeWithDistance(location!.coordinate, 400, 400)
            self.mapView.setRegion(region, animated: true)
        })
    }
    
    func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        search.endEditing(true)
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        let region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 400, 400)
        mapView.setRegion(region, animated: true)
    }
}
