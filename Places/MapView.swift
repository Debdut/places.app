//
//  Map.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    @EnvironmentObject var places: Places
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.732, longitude: 0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places.places) {
            place in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                NavigationLink(destination: PlaceView(place: place)) {
                    VStack {
                        Image(place.country)
                            .resizable()
                            .frame(width: 60, height: 30)
                            .cornerRadius(10)
                        Text(place.country)
                            .foregroundColor(.purple)
                    }
                }
            }
        }
            .navigationTitle("Maps")
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
