//
//  PopularTvSeries.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation

struct TvSeriesResponse: Decodable {
    let results: [TvSeries]
}

struct TvSeries: Decodable {
    let id: Int
    let originalLanguage: String
    let originalName: String
    let voteAverage: Double
    let overview: String
    
    enum CodingKeys: String, CodingKey {
        case id, overview
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case voteAverage = "vote_average"
    }
}
