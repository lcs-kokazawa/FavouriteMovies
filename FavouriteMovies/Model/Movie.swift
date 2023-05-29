//
//  Movie.swift
//  FavouriteMovies
//
//  Created by Kiho Okazawa on 2023-05-28.
//

import Blackbird
import Foundation

struct Movie: BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var genre: String
    @BlackbirdColumn var rating: Int
}
