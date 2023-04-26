//
//  DetailsMovieViewController.swift
//  PopcornPlay
//
//  Created by macbook pro on 26.04.2023.
//

import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {
    
    // Outlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    // ViewModel:
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.view.backgroundColor = .purple
        self.title = "Movie Details"
        
        self.titleLabel.text = viewModel.movieTitle
        self.descriptionLabel.text = viewModel.movieDescription
        self.imageView.sd_setImage(with: viewModel.movieImage)
    }
    

}
