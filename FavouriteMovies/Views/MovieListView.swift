//
//  MovieListView.swift
//  FavouriteMovies
//
//  Created by Kiho Okazawa on 2023-05-28.
//

import Blackbird
import SwiftUI

struct MovieListView: View {
    
    //MARK: Stored properties
    
    //The list of favorite movies, as read from the database
    @BlackbirdLiveModels({ db in
        try await Movie.read(from: db)
    }) var movies
    
    //Is the interface to add a movie visible right now?
    @State var showingAddMovieView = false
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List(movies.results) { currentMovie in
                MovieItemView(name: currentMovie.name, genre: currentMovie.genre,
                              rating: currentMovie.rating)
                
            }
            .navigationTitle("Favorite Movies")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        showingAddMovieView = true
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .sheet(isPresented: $showingAddMovieView) {
                        AddMovieView()
                            .presentationDetents([.fraction(0.3)])
                    }
                }
            }
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
