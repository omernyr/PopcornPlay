//
//  MovieTableCellViewModel.swift
//  PopcornPlay
//
//  Created by macbook pro on 26.04.2023.
//

import Foundation

class MovieTableCellViewModel {
    
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageURL: URL?
    
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.rating = "\(movie.voteAverage ?? 0)/10"
        self.imageURL = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkingConstant.shared.imageServerAdrress)\(imageCode)")
    }
    
}
