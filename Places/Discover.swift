//
//  SwiftUIView.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var places: Places
    
    var body: some View {
        ScrollView {
            ForEach(places.places) {
                place in
                NavigationLink(destination: PlaceView(place: place)) {
                    PlaceCard(place: place)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .shadow(radius: 10)
        }.navigationTitle("Discover")
    }
}

struct PlaceCard: View {
    let place: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(place.heroPicture)
                .resizable()
                .scaledToFit()
            Text(place.name)
                .font(.title)
                .bold()
                .padding(.leading)
            Text(place.country)
                .font(.title2)
                .padding([.bottom, .leading])
        }
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
