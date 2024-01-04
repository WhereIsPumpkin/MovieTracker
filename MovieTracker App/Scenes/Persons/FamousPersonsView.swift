//
//  FamousPersonsView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct FamousPersonsView: View {
    @ObservedObject var viewModel: FamousPersonsVM
    
    var body: some View {
        Text("Famous Persons")
    }
}

#Preview {
    FamousPersonsView(viewModel: FamousPersonsVM())
}
