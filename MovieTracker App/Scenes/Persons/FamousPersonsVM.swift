//
//  FamousPersonsVM.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import Foundation
import NetSwift

class FamousPersonsVM: ObservableObject {
    
    // MARK: - Properties
    @Published var famousPersonsResult: [Result] = []
    @Published var error: String = "error"
    
    
    // MARK: - Init
    
    init() {
        fetchData()
    }
    
    // MARK: - Network Call
    func fetchData() {
        
        guard let URL = URL(string: "https://api.themoviedb.org/3/person/popular?api_key=b3f94306203eb8a05798bd8b0e8911b2") else {
            return
            
        }
        NetworkManager.shared.fetchDecodableData(from: URL, responseType: Response.self, completion: { result in
            switch result {
            case .success(let data):
                print("Fetched persons: \(self.famousPersonsResult)")
                self.famousPersonsResult = data.results
            case .failure(let error):
                self.error = error.localizedDescription
                print("error\(error.localizedDescription)")
            }
        })
            
            }
}
