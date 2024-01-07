//
//  TvSeriesListItem.swift
//  MovieTracker App
//
//  Created by Macbook Air 13 on 07.01.24.
//

import SwiftUI

struct TvSeriesListItem: View {
    
    // MARK: - Properties
    @Binding var tvSeriesItem: TvSeries
    var posterBaseURL = "https://image.tmdb.org/t/p/original"
    
    
    // MARK: - body
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            posterDisplay
            
            Text(tvSeriesItem.name)
                .font(.title)
            
            Text(tvSeriesItem.overview)
                .font(.subheadline)
                .lineLimit(3)
            
            Text("Aired: \(tvSeriesItem.firstAirDate)")
                .font(.system(size: 14))
                .italic()
        }
        .foregroundColor(.white)
    }
    
    
    // MARK: - Private Views
    private var posterDisplay: some View {
        
        ZStack(alignment: .topLeading) {
            
            posterImage
            
            Text(String(format: "%.1f", tvSeriesItem.voteAverage ?? 0.0))
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(.orange)
                .cornerRadius(8)
                .padding([.leading, .top], 10)
        }
    }
    
    private var posterImage: some View {
        AsyncImage(url: URL(string: "\(posterBaseURL)\(tvSeriesItem.posterPath)")) { poster in
            poster
                .resizable()
        } placeholder: {
            ProgressView()
        }
        .scaledToFill()
        .frame(maxWidth: .infinity, maxHeight: 250)
        .clipped()
    }
}
