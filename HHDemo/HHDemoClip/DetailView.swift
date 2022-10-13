//
//  DetailView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 23/10/2022.
//

import SwiftUI
import MapKit


struct DetailView: View {
    @State var destination: Destination
    @State var page = 0
    let gray = Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    


    @State var requestLocation = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var requestLocation2 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var requestLocation3 = CLLocationCoordinate2D(latitude:  59.96977086723563, longitude:  10.734394666335078)

    @State var destinationLocation = CLLocationCoordinate2D(latitude: 59.96797028227239, longitude: 10.699593352257265)

    @State var destination2 = CLLocationCoordinate2D(latitude: 60.00969806898031, longitude: 10.712296294821657)

    @State var destinationLocation3 = CLLocationCoordinate2D(latitude: 59.97723925679474, longitude: 10.677125205983915)
    
    @State var index = 0
    @State var n = 0


    var body: some View {

        VStack{
            Image("logo")

            TabView(selection: self.$index){
                ForEach(destinations, id: \.self){ dest in
                    Card(width: 400, destination: dest)
                        .tag(dest.id)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onChange(of: index) { newValue in
                n = newValue
            }

            MyMapView(requestLocation1: $requestLocation, destinationLocation1: $destinationLocation, destinationLocation2: $destination2, destinationLocation3: $destinationLocation3, activeRoute: $n, item: destination)
                .frame(width: 350, height: 240)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .cornerRadius(30)
            HStack{
                ForEach(destinations, id: \.self){dest in
                    Rectangle()
                        .fill(dest.id == n ? .black : gray)
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 20)

            Button(action: {

            }, label: {
                NavigationLink(destination: MapView(item: destination, activeRoute: n)) {
                    Text("Start rute")
                }
            })
            .buttonStyle(GrowingButton())
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {

        DetailView(destination: destinations[0])
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(CGColor(srgbRed: 212/255, green: 18/255, blue: 23/255, alpha: 1)))
            .foregroundColor(.white)
            .clipShape(Rectangle())
            .cornerRadius(5)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


