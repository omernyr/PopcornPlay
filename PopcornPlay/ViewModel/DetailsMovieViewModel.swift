//
//  DetailsMovieViewModel.swift
//  PopcornPlay
//
//  Created by macbook pro on 26.04.2023.
//

import Foundation


class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieID = movie.id
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkingConstant.shared.imageServerAdrress)\(imageCode)")
    }
    
}
