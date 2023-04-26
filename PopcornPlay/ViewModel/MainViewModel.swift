//
//  MainViewModel.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[MovieTableCellViewModel]> = Observable(nil)
    var dataSoruce: TrendingMovieModel?
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        self.dataSoruce?.results?.count ?? 0
    }
    
    func getData() {
        
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true
        APICaller.getTrendingMovies { [weak self] result in
            
            self?.isLoading.value = false
            
            switch result {
            case .success(let data):
                self?.dataSoruce = data
                self?.mapCellData()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func mapCellData() {
        self.cellDataSource.value = self.dataSoruce?.results?.compactMap({MovieTableCellViewModel(movie: $0)})
    }
    
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title ?? movie.name ?? ""
    }
    
    func retriveMovie( with id: Int) -> Movie? {
        guard let movie = dataSoruce?.results?.first(where: {$0.id == id}) else {
            return nil }
        
        return movie
    }
}
