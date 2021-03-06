//
//  ViewController.swift
//  AnnotationOnAMap
//
//  Created by John on 11/1/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(64.126431, -21.816881)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        // map.delegate = self
        // print(self)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "My favorite place!!!"
        annotation.subtitle = "Come visit here!"
        
        map.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool) {
        
    }

}
