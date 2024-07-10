//
//  ContentView.swift
//  askMeFirst
//
//  Created by Alana Edwards on 7/10/24.
//

import SwiftUI
import MapKit


struct ContentView: View {
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    //@State variables are variables where you want the content on the screen to change
    // Use private variable when we only want it to be used in one spot of our code
    var body: some View {
        Map(position: $position){
            
        }
        .mapControls{
            MapUserLocationButton()
            MapPitchToggle()
        }
        .onAppear {
            CLLocationManager().requestWhenInUseAuthorization()
        }
    }
}

#Preview {
    ContentView()
}
