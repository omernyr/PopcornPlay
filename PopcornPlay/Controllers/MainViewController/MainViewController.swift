//
//  MainViewController.swift
//  PopcornPlay
//
//  Created by macbook pro on 21.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    
    // IBOutlets
    @IBOutlet var tableView: UITableView!
    @IBOutlet var myIndicator: UIActivityIndicatorView!
    
    // ViewModels
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        configView()
    }
    
    private func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemOrange
        
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
    
    private func bindViewModel() {
        
        viewModel.isLoading?.bind({ [weak self] isLoading in
                
            guard let self = self, let isLoading = isLoading else { return }
            
            DispatchQueue.main.async {
                if isLoading {
                    self.myIndicator.startAnimating()
                } else {
                    self.myIndicator.stopAnimating()
                }
                
            }
        })
    }
}
