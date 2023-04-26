//
//  MainMovieCell.swift
//  PopcornPlay
//
//  Created by macbook pro on 24.04.2023.
//

import UIKit

class MainMovieCell: UITableViewCell {
    
    // Outlets
    @IBOutlet var backView: UIView!
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.round()
        backView.addBorder(color: .label, width: 10.0)
        
        movieImageView.layer.cornerRadius = 5.0
    }

}
