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
    
    // ViewModels
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    private func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemOrange
        
        setupTableView()
    }
}
