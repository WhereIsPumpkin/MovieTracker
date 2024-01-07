//
//  TvSeriesView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct TvSeriesView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: TvSeriesVM
    
    // MARK: - body
    var body: some View {
        
        ZStack {
            Color("Background").ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Popular TV Series")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                contentViewStack
            }
            .padding(.top)
        }
    }
    
    
    // MARK: - Private Views
    private var contentViewStack: some View {
        ScrollView {
            VStack(spacing: 40) {
                tvSeriesForEachList
            }
        }
    }
    
    private var tvSeriesForEachList: some View {
        ForEach($viewModel.tvSeries, id: \.id) { tvSerie in
            TvSeriesListItem(tvSeriesItem: tvSerie)
                .cornerRadius(8)
                .padding(.horizontal)
        }
    }
}
