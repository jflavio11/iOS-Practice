//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("cockOfTheRock")
            .frame(width: 210)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth:2.0))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
