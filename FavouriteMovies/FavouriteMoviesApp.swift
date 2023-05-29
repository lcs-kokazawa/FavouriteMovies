//
//  FavouriteMoviesApp.swift
//  FavouriteMovies
//
//  Created by Kiho Okazawa on 2023-05-28.
//

import SwiftUI

@main
struct FavouriteMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            MovieListView()
            //Make the database available to all other view throgh the envirnment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
