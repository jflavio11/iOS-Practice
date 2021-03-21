//
//  LandmarksList.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        
        NavigationView {
            
            List(landmarks) { landmark in
                
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationTitle("Maravillas del Perú")
            
        }
        
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
        /*ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarksList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                                        .previewDisplayName(deviceName)
                }*/
    }
}
