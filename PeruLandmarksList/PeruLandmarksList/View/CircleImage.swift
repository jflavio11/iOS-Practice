//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 220, height: 220)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth:2.0))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("macchupicchu"))
    }
}
