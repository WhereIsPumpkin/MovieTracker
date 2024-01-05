//
//  MoviesInCinemaViewModel.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation
import NetSwift

class CinemaVM: ObservableObject {
    // MARK: - Properties
    @Published var cinemaMovies: [CinemaMovie] = []
    @Published var errorMSG: String = ""
    
    //MARK: - Initialization
    init() {
        fetchData()
    }
    
    // MARK: - Methods
    func fetchData() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=5e7b8939be858e8dda0cff6bd22b61bf") else {
            errorMSG = "Invalid URL"
            return
        }
        
        NetworkManager.shared.fetchDecodableData(from: url, responseType: CinemaMovies.self) { [self] result in
            switch result {
            case .success(let data):
                self.cinemaMovies = data.results
            case .failure(let error):
                self.errorMSG = error.localizedDescription
            }
        }
    }
}

