//
//  HeaderView.swift
//  MovieTracker App
//
//  Created by Lika Nozadze on 1/6/24.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .bottom) {
            Text("l")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.yellow)
            Spacer()
                .frame(width: 5)
            
            Text("Most Famous Persons")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.white)
               .frame(height: 40)
             
        }
        .padding()
    }
}

#Preview {
    HeaderView()
}
