//
//  MoviesInCinemaView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct CinemaView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: CinemaVM
    private let columns = [GridItem(.adaptive(minimum: 165)), GridItem(.adaptive(minimum: 165))]
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .leading) {
            Color("Background").ignoresSafeArea()
            contentStack
        }
    }
    
    // MARK: - Content Stack
    private var contentStack: some View {
        VStack(alignment: .leading, spacing: 25) {
            titleText
            cinemaLabel
            moviesInCinema
        }
        .padding(.vertical, 35)
        .padding(.horizontal, 24)
    }
    
    private var titleText: some View {
        Text("Discover the Magic on Screen")
            .font(.title).fontWeight(.medium)
            .foregroundStyle(.white)
    }
    
    private var cinemaLabel: some View {
        HStack {
            Label("Now In Cinema", systemImage: "popcorn.circle.fill")
                .font(.title2).fontWeight(.medium)
        }
        .frame(height: 40)
        .padding(.trailing, 30)
        .padding(.leading, 15)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private var moviesInCinema: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 25) {
                ForEach($viewModel.cinemaMovies) { movie in
                    MovieInCinemaCardView(movieCard: movie)
                }
            }
        }
    }
}

#Preview {
    CinemaView(viewModel: CinemaVM())
}
