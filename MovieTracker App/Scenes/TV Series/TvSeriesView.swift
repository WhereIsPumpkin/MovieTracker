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
        
        Text("TV Series")
    }
}

//#Preview {
//    TvSeriesView(viewModel: TvSeriesVM())
//}
struct TvSeriesView_Previews: PreviewProvider {
    static var previews: some View {
        TvSeriesView(viewModel: TvSeriesVM())
    }
}
