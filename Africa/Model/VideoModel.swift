//
//  VideoModel.swift
//  Africa
//
//  Created by Ryan Williams on 2/2/24.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
