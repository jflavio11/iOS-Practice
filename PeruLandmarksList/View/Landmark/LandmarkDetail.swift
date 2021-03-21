//
//  LandmarkDetail.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var currentLandmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == currentLandmark.id
        })!
    }
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                MapView(coordinate: currentLandmark.locationCordinates)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: currentLandmark.image)
                    .offset(y: -115)
                    .padding(.bottom, -115)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(currentLandmark.name)
                            .font(.title)
                            .foregroundColor(.primary)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    HStack {
                        Text(currentLandmark.park)
                        Spacer()
                        Text(currentLandmark.state)
                    }.font(.subheadline)
                    .foregroundColor(.gray)
                    
                    Divider()
                    
                    Text(currentLandmark.description)
                        .font(.body)
                    
                }.padding()
                
            }
            
        }
        .navigationTitle(currentLandmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(currentLandmark: ModelData().landmarks[0])
    }
}
