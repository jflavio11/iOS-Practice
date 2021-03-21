//
//  Hike.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 21/03/21.
//

import Foundation

struct Hike: Codable, Identifiable, Hashable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
}
