//
//  MainViewModel.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool>? = Observable(false)
    var dataSoruce: TrendingMovieModel?
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        4
    }
    
    func getData() {
        
        if isLoading?.value ?? true {
            return
        }
        isLoading?.value = true
        APICaller.getTrendingMovies { [weak self] result in
            
            self?.isLoading?.value = false
            
            switch result {
            case .success(let data):
                
                self?.dataSoruce = data
                print(data)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
