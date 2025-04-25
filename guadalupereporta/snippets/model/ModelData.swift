//
//  ModelData.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 25/04/25.
//

import Foundation

var landmarksData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file: URL = Bundle.main.url(forResource: filename, withExtension: "")
    else {
        fatalError("Couln't find \(filename) in the main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) as Data: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't decode \(filename) as \(T.self): \(error)")
    }
}
