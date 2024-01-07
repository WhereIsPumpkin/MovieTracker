//
//  MoviesInCinema.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation

struct CinemaMovies: Decodable {
    let results: [CinemaMovie]
}

struct CinemaMovie: Decodable, Identifiable {
    let id: Int
    let title: String
    let releaseDate: String
    let overview: String
    let posterPath: String
    var voteAverage: Double
    let voteCount: Int
    let adult: Bool
    let genreIds: [Int]?
    let originalLanguage: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case releaseDate = "release_date"
        case overview
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case adult
        case genreIds = "genre_ids"
        case originalLanguage = "original_language"
    }
}

