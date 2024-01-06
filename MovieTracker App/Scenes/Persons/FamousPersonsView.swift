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
    
    // MARK: - Body
    var body: some View {
        Text("Famous Persons")
    }
}

#Preview {
    FamousPersonsView(viewModel: FamousPersonsVM())
}
