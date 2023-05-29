//
//  MovieListView.swift
//  FavouriteMovies
//
//  Created by Kiho Okazawa on 2023-05-28.
//

import SwiftUI

struct MovieListView: View {
    var body: some View {
        NavigationView {
            List {
                MovieItemView(name: "E.t. the Extre-Terrestrial", genre: "Science Fiction", rating: 4)
                MovieItemView(name: "Ferris Bueller's Day off", genre: "Comedy", rating: 4)
                MovieItemView(name: "Ghostbusters", genre: "Comedy", rating: 5)
            }
            .navigationTitle("Favorite Movies")
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
        //Make the database available to all other view through the envirnment
            .environment(\.blackbirdDatabase, AppDatabase.instance)
            
    }
}
