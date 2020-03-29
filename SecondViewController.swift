//
//  SecondViewController.swift
//  LA Hacks 2020
//
//  Created by Jessica D on 3/27/20.
//  Copyright © 2020 Jessica D. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class SecondViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(37.856890, -122.259940)
        annotation.title = "Carbon Health - Berkeley"
        annotation.subtitle = "2920 Telegraph Ave, Berkeley, CA 94705"
        mapView.addAnnotation(annotation)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2DMake(37.763088, -122.457817)
        annotation2.title = "UCSF"
        annotation2.subtitle = "505 Parnassus Ave, San Francisco, CA 94143"
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2DMake(37.798180, -122.398490)
        annotation3.title = "Carbon Health San Francisco - Financial District"
        annotation3.subtitle = "55 Pacific Ave, San Francisco, CA 94111"
        mapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2DMake(37.786381, -122.456253)
        annotation4.title = "CMPC California Campus"
        annotation4.subtitle = "3700 California Street, San Francisco, CA 94118"
        mapView.addAnnotation(annotation4)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2DMake(37.748900, -122.433860)
        annotation5.title = "CMPC Davies Campus"
        annotation5.subtitle = "Castro and Duboce Streets, San Francisco, CA 94114"
        mapView.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2DMake(37.747870, -122.421516)
        annotation6.title = "CMPC Mission Bernal Campus"
        annotation6.subtitle = "3555 Cesar Chavez Street, San Francisco, CA 94110"
        mapView.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2DMake(37.791040, -122.431263)
        annotation7.title = "CPMC Pacific Heights Outpatient Campus"
        annotation7.subtitle = "2333 Buchanan Street, San Francisco, CA 94115"
        mapView.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2DMake(37.786143, -122.422175)
        annotation8.title = "CPMC Van Ness Campus"
        annotation8.subtitle = "1101 Van Ness Ave, San Francisco, CA 94109"
        mapView.addAnnotation(annotation8)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2DMake(37.777832, -122.392943)
        annotation9.title = "SF Walk-in Care"
        annotation9.subtitle = "240 King StreetSuite G2, San Francisco, CA 94107"
        mapView.addAnnotation(annotation9)
        
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2DMake(37.780836, -122.463776)
        annotation10.title = "Kaiser Permanente French Campus"
        annotation10.subtitle = "4131 Geary Blvd, San Francisco, CA 94118"
        mapView.addAnnotation(annotation10)
        
        let annotation11 = MKPointAnnotation()
        annotation11.coordinate = CLLocationCoordinate2DMake(37.782176, -122.505073)
        annotation11.title = "SF VA Health Care System"
        annotation11.subtitle = "4150 Clement Street, San Francisco, CA 94121"
        mapView.addAnnotation(annotation11)
        
        let annotation12 = MKPointAnnotation()
        annotation12.coordinate = CLLocationCoordinate2DMake(37.782643, -122.396933)
        annotation12.title = "SFVA Downtown Clinic"
        annotation12.subtitle = "401 3rd Street, San Francisco, CA 94107"
        mapView.addAnnotation(annotation12)
        
        let annotation13 = MKPointAnnotation()
        annotation13.coordinate = CLLocationCoordinate2DMake(37.784856, -122.439184)
        annotation13.title = "UCSF Mount Zion"
        annotation13.subtitle = "1600 Divisadero St, San Francisco, CA 94115"
        mapView.addAnnotation(annotation13)
        
        let annotation14 = MKPointAnnotation()
        annotation14.coordinate = CLLocationCoordinate2DMake(37.766586, -122.390141)
        annotation14.title = "UCSF Mission Bay"
        annotation14.subtitle = "1825 4th St, San Francisco, CA 94158"
        mapView.addAnnotation(annotation14)
        
        let annotation15 = MKPointAnnotation()
        annotation15.coordinate = CLLocationCoordinate2DMake(37.763330, -122.457821)
        annotation15.title = "UCSF Medical Center"
        annotation15.subtitle = "505 Parnassus Ave, San Francisco, CA 94143"
        mapView.addAnnotation(annotation15)
        
        let annotation16 = MKPointAnnotation()
        annotation16.coordinate = CLLocationCoordinate2DMake(37.782654, -122.443075)
        annotation16.title = "Kaiser Permanente SF Medical Center and Medical Offices"
        annotation16.subtitle = "2425 Geary Blvd, San Francisco, CA 94115"
        mapView.addAnnotation(annotation16)
        
        let annotation17 = MKPointAnnotation()
        annotation17.coordinate = CLLocationCoordinate2DMake(37.784941, -122.439227)
        annotation17.title = "UCSF Medical Center at Mount Zion"
        annotation17.subtitle = "1600 Divisadero St, San Francisco, CA 94143"
        mapView.addAnnotation(annotation17)
        
        let annotation18 = MKPointAnnotation()
        annotation18.coordinate = CLLocationCoordinate2DMake(37.770254, -122.426285)
        annotation18.title = "Carbon Health San Francisco - Castro"
        annotation18.subtitle = "1998 Market St, San Francisco, CA 94102"
        mapView.addAnnotation(annotation18)
        
        let annotation19 = MKPointAnnotation()
        annotation19.coordinate = CLLocationCoordinate2DMake(37.798204, -122.398056)
        annotation19.title = "Carbon Health SF - Financial District"
        annotation19.subtitle = "55 Pacific Ave, San Francisco, CA 94111"
        mapView.addAnnotation(annotation19)
        
        let annotation20 = MKPointAnnotation()
        annotation20.coordinate = CLLocationCoordinate2DMake(37.766578, -122.390130)
        annotation20.title = "UCSF Medical Center at Mission Bay"
        annotation20.subtitle = "1825 4th St, San Francisco, CA 94143"
        mapView.addAnnotation(annotation20)
        
        let annotation21 = MKPointAnnotation()
        annotation21.coordinate = CLLocationCoordinate2DMake(37.786330, -122.448037)
        annotation21.title = "One Medical UCSF Laurel Heights"
        annotation21.subtitle = "3333 California St, San Francisco, CA 94118"
        mapView.addAnnotation(annotation21)
        
        let annotation22 = MKPointAnnotation()
        annotation22.coordinate = CLLocationCoordinate2DMake(37.790201, -122.403698)
        annotation22.title = "Forward Clinic, San Francisco"
        annotation22.subtitle = "180 Sutter St, San Francisco, CA 94104"
        mapView.addAnnotation(annotation22)
        
        
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        //var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "identifier")
        if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "identifier") {
            annotationView.annotation = annotation
            return annotationView
        } else {
            let annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier: "identifier")
            annotationView.isEnabled = true
            annotationView.canShowCallout = true

            let btn = UIButton(type: .detailDisclosure)
            annotationView.rightCalloutAccessoryView = btn
        return annotationView
        }

    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerViewOnUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            setupLocationManager()
            checkLocationAuthorization()
        }
        else {
            //code
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            centerViewOnUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .denied:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        case .authorizedAlways:
            break
        }
        
    }
    
}

extension SecondViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let region = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
}

