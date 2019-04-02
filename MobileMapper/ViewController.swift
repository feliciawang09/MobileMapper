//
//  ViewController.swift
//  MobileMapper
//
//  Created by Felicia Wang 2019 on 4/1/19.
//  Copyright © 2019 fwang9. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var currentLocation: CLLocation!
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }

    func locationmanager(_manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        currentLocation = locations[0]
    }

}

