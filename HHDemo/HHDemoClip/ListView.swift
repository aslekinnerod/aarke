//
//  ListView.swift
//  HHDemoClip
//
//  Created by Asle Kinnerød on 21/10/2022.
//

import SwiftUI

 var destinations: [Destination] = [Destination(id: 0, name: "VETTAKOLLEN", description: "Vil du gå en dagstur fra Skar er det godt å legge turen om Ullevålseter. Følg grusveien opp fra parkeringsplassen til bommen. Her starter stien, med skilting retning Fagervann. Videre finner du skilting mot Skjersjødammen. Fra Skjersjødammen er det skiltet mot Ullevålseter. Da er det fint med en hvil og kanskje en bolle hvis det er åpent.", distance: 10, rating: "Lett", time: "2t"), Destination(id: 1, name: "ULLEVÅLSETER", description: "Vil du gå en dagstur fra Skar er det godt å legge turen om Ullevålseter. Følg grusveien opp fra parkeringsplassen til bommen. Her starter stien, med skilting retning Fagervann. Videre finner du skilting mot Skjersjødammen. Fra Skjersjødammen er det skiltet mot Ullevålseter. Da er det fint med en hvil og kanskje en bolle hvis det er åpent.", distance: 15, rating: "Lett", time: "1t"), Destination(id: 2, name: "FROGNERSETEREN", description: "Vil du gå en dagstur fra Skar er det godt å legge turen om Ullevålseter. Følg grusveien opp fra parkeringsplassen til bommen. Her starter stien, med skilting retning Fagervann. Videre finner du skilting mot Skjersjødammen. Fra Skjersjødammen er det skiltet mot Ullevålseter. Da er det fint med en hvil og kanskje en bolle hvis det er åpent.", distance: 5, rating: "Lett", time: "45min")]


struct ListView: View {



    var body: some View {

            List{
                ForEach(destinations, id: \.self) { item in
                    NavigationLink(destination: DetailView(destination: item, index: item.id, n: item.id)){
                        ListItemRow(alpha: 1, place: item.name)
                    }
                    .modifier(CenterModifier())
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
            }
            .padding(.top, -30)
        
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
