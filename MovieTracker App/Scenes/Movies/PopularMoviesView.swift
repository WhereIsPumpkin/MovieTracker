//
//  SwiftUIView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct PopularMoviesView: View {
    @ObservedObject var viewModel: PopularMoviesVM
    
    var body: some View {
        Text("Popular Movies")
    }
}

//#Preview {
//    PopularMoviesView(viewModel: PopularMoviesVM())
//}
