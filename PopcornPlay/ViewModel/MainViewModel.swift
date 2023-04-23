//
//  MainViewModel.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        2
    }
    
    func numberOfRows(in section: Int) -> Int {
        4
    }
    
    func getData() {
        
        APICaller.getTrendingMovies { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
        
    }
    
}
