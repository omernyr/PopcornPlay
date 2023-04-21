//
//  APICaller.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class APICaller {
    
    static func getTrendingMovies(completion: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void) {
        
        let urlString = NetworkingConstant.shared.serverAdrress +
        "trending/all/day?api_key=" +
        NetworkingConstant.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data, error == nil else {
                completion(.failure(.canNotParseData))
                return }
            
            let results = try! JSONDecoder().decode(TrendingMovieModel.self, from: data)
            completion(.success(results))
            
        }.resume()
        
    }
}
