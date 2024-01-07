//
//  TvSeriesVM.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation
import NetSwift

final class TvSeriesVM: ObservableObject {
    
    // MARK: - Properties
    @Published var tvSeries: [TvSeries] = []
    @Published var errorMessage: String = ""
    private let baseURL = "https://api.themoviedb.org/3/tv/popular"
    private let apiKey = "0ef1f9d4f31d9ebccb49105074d05775"
    
    
    // MARK: - Init
    init() {
        fetchData()
    }
    
    
    // MARK: - Methods
    private func fetchData() {
        guard let url = URL(string: "\(baseURL)?api_key=\(apiKey)") else {
            errorMessage = "Invalid URL"
            return
        }
        
        NetworkManager.shared.fetchDecodableData(from: url, responseType: TvSeriesResponse.self) { [self] result in
            switch result {
            case .success(let data):
                self.tvSeries = data.results
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
