//
//  PlacesApp.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import SwiftUI

@main
struct PlacesApp: App {
    @StateObject var places = Places()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    DiscoverView()
                }
                .tabItem {
                    Image(systemName: "sun.min")
                    Text("Discover")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Maps")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Tips")
                }
            }
            .environmentObject(places)
        }
    }
}
