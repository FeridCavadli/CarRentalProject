//
//  HeaderCollectionReusableViewCell.swift
//  CarRental
//
//  Created by Ferid on 16.09.25.
//

import UIKit

class HeaderCollectionReusableViewCell: UICollectionViewCell {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var carSectionImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        contentView.layer.cornerRadius = 30
        contentView.backgroundColor = .white
    }

}
