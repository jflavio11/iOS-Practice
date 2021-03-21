//
//  ModelData.swift
//  Peru Landmarks List
//
//  Created by Jose Flavio Quispe on 20/03/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks : [Landmark] = loadData(fileName: "landmarkData.json")
}

func loadData<T: Decodable>(fileName: String) -> T {
    
    let data: Data // Data: buffer type in memory
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decorder = JSONDecoder()
        return try decorder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
    
}
