//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ryan Williams on 2/1/24.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String ) -> T {
        // MARK: - locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // MARK: - create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // MARK: - decoder
        let decoder = JSONDecoder()
        // MARK: - property for decoder
        guard let loaded = try? decoder.decode (T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // MARK: - return ready to use data
        return loaded
    }
}
