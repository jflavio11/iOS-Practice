//
//  LandmarkDetail.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                MapView(coordinate: landmark.locationCordinates)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -115)
                    .padding(.bottom, -115)
                
                VStack(alignment: .leading) {
                    
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }.font(.subheadline)
                    .foregroundColor(.gray)
                    
                    Divider()
                    
                    Text(landmark.description)
                        .font(.body)
                    
                }.padding()
                
            }
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
    }
}
