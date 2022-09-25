//
//  ContentView.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import SwiftUI

struct PlaceView: View {
    let place: Place
    
    var body: some View {
        
        ScrollView {
            Image(place.heroPicture)
                .resizable()
                .scaledToFit()
            Text(place.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            Text(place.country)
                .font(.title)
            Text(place.description)
                .padding()
            
            Text("Did you know?")
                .bold()
                .padding(.top)
                .font(.title3)
            
            Text(place.more)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaceView(place: Place.example)
        }
    }
}
