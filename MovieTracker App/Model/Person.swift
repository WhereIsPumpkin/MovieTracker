//
//  FamousPerson.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation

struct Response: Decodable {
    let results: [Person]
}

struct Person: Decodable, Identifiable {
    let id: Int
    let adult: Bool
    let gender: Int
    let knownForDepartment: String
    let name: String
    let originalName: String
    let popularity: Double
    let profilePath: String?
    let knownFor: [KnownFor]
    
    enum CodingKeys: String, CodingKey {
        case adult, gender, id, name, popularity
        case knownForDepartment = "known_for_department"
        case originalName = "original_name"
        case profilePath = "profile_path"
        case knownFor = "known_for"
    }
}
struct KnownFor: Decodable {
    let title: String?
}
