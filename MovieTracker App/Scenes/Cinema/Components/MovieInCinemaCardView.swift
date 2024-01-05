//
//  MovieInCinemaCardView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct MovieInCinemaCardView: View {
    
    @Binding var movieCard: CinemaMovie
    var imageUrlBase = "https://image.tmdb.org/t/p/original"
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            image
            
            Spacer()
                .frame(height: 16)
            
            details
        }
    }
    
    private var image: some View {
        AsyncImage(url: URL(string: "\(imageUrlBase)\(movieCard.posterPath)")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(idealWidth: 165, idealHeight: 250)
    }
    
    private var description: some View {
        HStack {
            Text("Genre")
            
            Text("●")
                .font(.system(size: 7))
            
            Text("\(Int.random(in: 1..<3))hr \(Int.random(in: 1..<60))m | \(movieCard.adult ? "PG" : "R" )")
        }
        .font(.system(size: 12, weight: .medium))
        .foregroundColor(.gray)
    }
    
    private var details: some View {
        VStack(alignment: .leading, spacing: 6) {
            RatingView(rating: $movieCard.voteAverage)
            
            Text(movieCard.title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)
            
            description
        }
    }
}
