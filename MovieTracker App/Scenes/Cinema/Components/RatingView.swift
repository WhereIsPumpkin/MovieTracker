//
//  RatingView.swift
//  MovieTracker App
//
//  Created by Saba Gogrichiani on 05.01.24.
//

import SwiftUI

struct RatingView: View {
    //MARK: - Properties
    @Binding var rating: Double
    var maximumRating = 5
    var offImage = Image(systemName: "star")
    var onImage = Image(systemName: "star.fill")
    var ratingColor = Color.orange
    
    //MARK: - Body
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .font(.system(size: 14))
                    .foregroundStyle(ratingColor)
            }
        }
        .buttonStyle(.plain)
    }
    
    //MARK: - Methods
    func image(for number: Int) -> Image {
        if Double(number) > rating/2 {
            return offImage
        } else {
            return onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(10))
}
