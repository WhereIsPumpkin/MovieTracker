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
        VStack {
            
            profilePic
            info
                .frame(height: 50)
        }

        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
        .clipShape(
            .rect(
            topLeadingRadius: 10,
            bottomLeadingRadius: 0,
            bottomTrailingRadius: 0,
            topTrailingRadius: 10
            )
            )
    }
    private var profilePic: some View {
        AsyncImage(url: URL(string: "\(profilePathUrl)\(person.profilePath ?? "test")")) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160, height: 240)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } placeholder: {
            
        }
    }
    
    private var info: some View {
        VStack(alignment: .leading) {
            Text(person.name)
   
            Text(person.knownForDepartment)
            HStack {
                Image(systemName: "triangle.fill")
                    .foregroundColor(.green)
                
                Text("(\(String(person.popularity)))")
                
            }
        }
        .font(.system(size: 14, weight: .light))
        .foregroundColor(.black)
    }
}
   
//#Preview {
//    PersonsView(viewModel: FamousPersonsVM())
//}
