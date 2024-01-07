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
    let posterPath: String
    let firstAirDate: String
    let voteAverage: Double?
    let name: String
    let overview: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, overview
        case originalLanguage = "original_language"
        case posterPath = "poster_path"
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
    }
}
