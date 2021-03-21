//
//  BadgeBackground.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 21/03/21.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        
        // GeometryReader dynamically reports size and
        // position information about the parent view and
        // the device, and updates whenever the size
        // changes; for example, when the user rotates their iPhone.
        GeometryReader { geometry in
            
            Path { path in
                
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                
                width *= xScale
                
                path.move(
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segmens.forEach { segment in
                    // The addLine(to:) method takes a single point and draws
                    // it. Successive calls to addLine(to:) begin a line at
                    // the previous point and continue to the new point.
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    
                    // Use the addQuadCurve(to:control:) method to draw the
                    // Bézier curves for the badge’s corners.
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
                
            }.fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    startPoint: UnitPoint(x: 0.3, y: 0.68),
                    endPoint: UnitPoint(x: 0.9, y: 0.1)
                )
            )
            
        }.aspectRatio(1, contentMode: .fit)
        
    }
    
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
        
    }
}
