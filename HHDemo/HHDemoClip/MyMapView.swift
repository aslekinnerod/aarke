//
//  MyMapView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 24/10/2022.
//

import Foundation
import SwiftUI
import MapKit

struct MyMapView: UIViewRepresentable {

    @Binding var requestLocation1: CLLocationCoordinate2D
    @Binding var destinationLocation1: CLLocationCoordinate2D
    @Binding var destinationLocation2: CLLocationCoordinate2D
    @Binding var destinationLocation3 : CLLocationCoordinate2D
    @Binding var activeRoute: Int
    @State var printingNow: Int = 0

    private let mapView = WrappableMapView()
    let item: Destination

    func makeUIView(context: UIViewRepresentableContext<MyMapView>) -> WrappableMapView {
        mapView.delegate = context.coordinator
        return mapView
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func updateUIView(_ uiView: WrappableMapView, context: UIViewRepresentableContext<MyMapView>) {
        uiView.removeOverlays(uiView.overlays)
        uiView.removeAnnotations(uiView.annotations)

        let requestAnnotation = MKPointAnnotation()
        requestAnnotation.coordinate = requestLocation1
        requestAnnotation.title = "Start"
        uiView.addAnnotation(requestAnnotation)

        let destinationAnnotation1 = MKPointAnnotation()
        destinationAnnotation1.coordinate = destinationLocation1
        destinationAnnotation1.title = destinations[0].name
        uiView.addAnnotation(destinationAnnotation1)

        let destinationAnnotation2 = MKPointAnnotation()
        destinationAnnotation2.coordinate = destinationLocation2
        destinationAnnotation2.title = destinations[1].name
        uiView.addAnnotation(destinationAnnotation2)

        let destinationAnnotation3 = MKPointAnnotation()
        destinationAnnotation3.coordinate = destinationLocation3
        destinationAnnotation3.title = destinations[2].name
        uiView.addAnnotation(destinationAnnotation3)

        let requestPlacemark = MKPlacemark(coordinate: requestLocation1)
        let destinationPlacemark1 = MKPlacemark(coordinate: destinationLocation1)
        let destinationPlacemark2 = MKPlacemark(coordinate: destinationLocation2)
        let destinationPlacemark3 = MKPlacemark(coordinate: destinationLocation3)


        let directionRequest1 = MKDirections.Request()
        directionRequest1.source = MKMapItem(placemark: requestPlacemark)
        directionRequest1.destination = MKMapItem(placemark: destinationPlacemark1)
        directionRequest1.transportType = .walking

        let directionRequest2 = MKDirections.Request()
        directionRequest2.source = MKMapItem(placemark: requestPlacemark)
        directionRequest2.destination = MKMapItem(placemark: destinationPlacemark2)
        directionRequest2.transportType = .walking

        let directionRequest3 = MKDirections.Request()
        directionRequest3.source = MKMapItem(placemark: requestPlacemark)
        directionRequest3.destination = MKMapItem(placemark: destinationPlacemark3)
        directionRequest3.transportType = .walking


        let directions1 = MKDirections(request: directionRequest1)
        directions1.calculate { response, error in
            guard let response = response else { return }
            let route = response.routes[0]
            //route.polyline.setValue(0, forKey: "id")
            printingNow = 0
            uiView.addOverlay(route.polyline, level: .aboveRoads)
            let rect = route.polyline.boundingMapRect
        }

        let directions2 = MKDirections(request: directionRequest2)
        directions2.calculate { response, error in
            guard let response = response else { return }
            let route = response.routes[0]
            printingNow = 1
            uiView.addOverlay(route.polyline, level: .aboveRoads)
            let rect = route.polyline.boundingMapRect
            uiView.setVisibleMapRect(rect, edgePadding: .init(top: 50.0, left: 50.0, bottom: 50.0, right: 50.0), animated: true)

        }

        let directions3 = MKDirections(request: directionRequest3)
        directions3.calculate { response, error in
            guard let response = response else { return }
            printingNow = 2
            let route = response.routes[0]
            uiView.addOverlay(route.polyline, level: .aboveRoads)
            let rect = route.polyline.boundingMapRect

        }
    }


    func setMapRegion(_ region: CLLocationCoordinate2D){
        mapView.region = MKCoordinateRegion(center: region, latitudinalMeters: 60000, longitudinalMeters: 60000)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MyMapView

        init(_ parent: MyMapView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = self.parent.activeRoute == self.parent.printingNow ? .red : UIColor.gray.withAlphaComponent(0.2)
            return renderer
        }

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            var requestLocation1 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)


            let ano1 = MKAnnotationView()
            ano1.annotation = annotation
            ano1.canShowCallout = true
            if annotation.title == "Start"{
                ano1.image = UIImage(systemName: "figure.walk")?.withTintColor(.red)
            } else {
                ano1.image = UIImage(named: "pin")
            }

            return ano1
        }
    }
}

class WrappableMapView: MKMapView, MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = getRandomColor()
        renderer.lineWidth = 3.0
        return renderer
    }

    override func view(for annotation: MKAnnotation) -> MKAnnotationView? {
        var requestLocation1 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

        let requestAnnotation = MKPointAnnotation()
        requestAnnotation.coordinate = requestLocation1
        requestAnnotation.title = "Start"
        let ano1 = MKAnnotationView()
        ano1.annotation = requestAnnotation
        ano1.image = UIImage(named: "pin")
       return ano1
    }



    func getRandomColor() -> UIColor{
         let randomRed = CGFloat.random(in: 0...1)
         let randomGreen = CGFloat.random(in: 0...1)
         let randomBlue = CGFloat.random(in: 0...1)
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

}



