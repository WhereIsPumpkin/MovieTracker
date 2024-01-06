//
//  FamousPersonsView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct FamousPersonsView: View {
    private let backgroundColor = Color(red: 0.06, green: 0.11, blue: 0.17)
    
    // MARK: - Properties
    
    @ObservedObject var viewModel: FamousPersonsVM
    
    
    private let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack(alignment: .leading) {
                HeaderView()
                ScrollView {
                    LazyVGrid(columns: gridLayout, spacing: 10) {
                        ForEach($viewModel.famousPersonsResult) { person in
                            PersonsView(person: person)
                        }
                    }
                }
            }
            .padding()
        }
        
    }

}
#Preview {
    FamousPersonsView(viewModel: FamousPersonsVM())
}
