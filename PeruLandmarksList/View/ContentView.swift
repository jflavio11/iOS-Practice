//
//  ContentView.swift
//  Landmarks
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("1")
                }
            
            LandmarksList()
                .tabItem {
                    Image(systemName: "leaf.arrow.circlepath")
                    Text("Maravillas del Perú")
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            // ContentView, which has LandmarksList view, requires a Model
            // data as a EnvironmentObject
            .environmentObject(ModelData())
    }
}
