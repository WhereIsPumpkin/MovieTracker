//
//  TvSeriesView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct TvSeriesView: View {
    @ObservedObject var viewModel: TvSeriesVM
    
    var body: some View {
        Text("TV Series")
    }
}

#Preview {
    TvSeriesView(viewModel: TvSeriesVM())
}
