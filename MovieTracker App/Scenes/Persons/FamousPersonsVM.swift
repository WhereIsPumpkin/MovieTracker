//
//  FamousPersonsVM.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation
import NetSwift

final class FamousPersonsVM: ObservableObject {
    
    // MARK: - Properties
    @Published var famousPersonsResult: [Person] = []
    @Published var error: String = "Invalid URL"
    
    
    // MARK: - Init
    init() {
        fetchData()
    }
    
    // MARK: - Network Call
    private func fetchData() {
        
        guard let URL = URL(string: "https://api.themoviedb.org/3/person/popular?api_key=b3f94306203eb8a05798bd8b0e8911b2") else {
            return error = "Invalid URL"
        }
        
        NetworkManager.shared.fetchDecodableData(from: URL, responseType: Response.self, completion: { result in
            switch result {
            case .success(let data):
                self.famousPersonsResult = data.results
            case .failure(let error):
                self.error = error.localizedDescription
            }
        })
    }
}
