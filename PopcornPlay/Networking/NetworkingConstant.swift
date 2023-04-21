//
//  NetworkingConstant.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import Foundation

class NetworkingConstant {
    
    public static var shared: NetworkingConstant = NetworkingConstant()
    
    private init() {
        // MARK: SİNGLETONE
    }
    
    public var apiKey: String {
        get {
            return "6c474d456db7cbe7c8a6ba6a2e0c6d3a"
        }
    }
    
    public var serverAdrress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAdrress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
}
