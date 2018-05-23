//
//  MapViewController.swift
//  Jive Factory
//
//  Created by Diane Korongy on 2/10/18.
//  Copyright © 2018 Diane Korongy. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {


    @IBOutlet weak var jiveMapView: MKMapView!
    
    
let jiveLatitude = 40.72004
let jiveLongitude = -74.003912
    let jiveSpan = 0.05
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
var jiveRegion = MKCoordinateRegion()
    var center = CLLocationCoordinate2D()
        center.latitude = jiveLatitude
        center.longitude = jiveLongitude
        var span = MKCoordinateSpan()
        
        span.latitudeDelta = jiveSpan
        span.longitudeDelta = jiveSpan
        
        jiveRegion.center = center
        jiveRegion.span = span
        jiveMapView.setRegion(jiveRegion, animated: true)
        
        let jivePoint = MKPointAnnotation()
        jivePoint.coordinate = center
        jivePoint.title = "The Jive Factory"
        jivePoint.subtitle = "580 Lispenard, NY, NY 10013"
        jiveMapView.addAnnotation(jivePoint)
    }
    
}
