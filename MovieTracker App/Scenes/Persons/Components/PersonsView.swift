//
//  PersonsView.swift
//  MovieTracker App
//
//  Created by Lika Nozadze on 1/6/24.
//

import SwiftUI

struct PersonsView: View {
    
    // MARK: - Properties
    @Binding var person: Person
    var profilePathUrl = "https://image.tmdb.org/t/p/w500"
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            
            profilePic
            info
                .frame(height: 60)
        }
        .frame(width: 160)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
    
    private var profilePic: some View {
        AsyncImage(url: URL(string: "\(profilePathUrl)\(person.profilePath ?? "test")")) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 240)
            
        } placeholder: {
            Image("jacob")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 240)
        }
    }

    private var info: some View {
        VStack(alignment: .leading) {
            Text(person.name)
                .font(.system(size: fontSize(for: person.name)))
                .bold()
                .foregroundColor(.black)
            
            ForEach(Array(person.knownFor.prefix(2)), id: \.title) { knownFor in
                if let title = knownFor.title {
                    Text(title)
                        .font(.system(size: fontSize(for: title)))
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    private func fontSize(for text: String) -> CGFloat {
        if text.count > 50 {
            return 12
        } else {
            return 14
        }
    }
}

//}
   
//#Preview {
//    PersonsView(viewModel: FamousPersonsVM())
//}
