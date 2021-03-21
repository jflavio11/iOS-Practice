//
//  Badge.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 21/03/21.
//

import SwiftUI

struct Badge: View {
    
    static let rotationCount = 8
    
    var badgeSymbol: some View {
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0
            ).opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            // GeometryReader dynamically reports size and
            // position information about the parent view and
            // the device, and updates whenever the size
            // changes; for example, when the user rotates their iPhone.
            GeometryReader { geometry in
                
                badgeSymbol
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(
                        x: geometry.size.width / 2.0,
                        y: (3.0/4.0) * geometry.size.height
                    )
                
            }
        }.scaledToFit()
    }
    
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
