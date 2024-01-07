//
//  FamousPersonsView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct FamousPersonsView: View {
    // MARK: - Properties
    @ObservedObject var viewModel: FamousPersonsVM
    
    private let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    // MARK: - Computed Property
    private var scrollView: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, spacing: 10) {
                ForEach($viewModel.famousPersonsResult) { person in
                    PersonsView(person: person)
                }
            }
        }
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack(alignment: .leading) {
                HeaderView()
                scrollView
            }
            .padding()
        }
    }
    
}
#Preview {
    FamousPersonsView(viewModel: FamousPersonsVM())
}
