//
//  MapView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 24/10/2022.
//

import SwiftUI
import MapKit


var locationManager = CLLocationManager()

let dest = Destination(id: 1, name: "Vettakollen", description: "Vil du gå en dagstur fra Skar er det godt å legge turen om Ullevålseter. Følg grusveien opp fra parkeringsplassen til bommen. Her starter stien, med skilting retning Fagervann. Videre finner du skilting mot Skjersjødammen. Fra Skjersjødammen er det skiltet mot Ullevålseter. Da er det fint med en hvil og kanskje en bolle hvis det er åpent.", distance: 10, rating: "Lett", time: "2t")

struct MapView: View {

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 59.9870776731574, longitude: 10.666893422359118), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    func getPermissions(){
        locationManager.requestAlwaysAuthorization()
    }

    var item: Destination
    @State var activeRoute: Int
    @State var requestLocation = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var requestLocation2 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var requestLocation3 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var destinationLocation = CLLocationCoordinate2D(latitude: 60.04997338547555, longitude: 10.721992858097798)

    @State var destinationLocation2 = CLLocationCoordinate2D(latitude: 60.00997338547555, longitude: 10.711992858097798)

    @State var destinationLocation3 = CLLocationCoordinate2D(latitude: 60.10997338547555, longitude: 10.701992858097798)

    var body: some View {

     
        MyMapView(requestLocation1: $requestLocation, destinationLocation1: $destinationLocation, destinationLocation2: $destinationLocation2, destinationLocation3: $destinationLocation3, activeRoute: $activeRoute, item: item)

        .edgesIgnoringSafeArea(.all)
        .onAppear{getPermissions()}
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(item: dest, activeRoute: 0)
    }
}


