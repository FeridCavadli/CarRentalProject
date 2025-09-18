//
//  CarCell.swift
//  CarRental
//
//  Created by Ferid on 11.09.25.
//

import UIKit

class CarCell: UICollectionViewCell {
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var engine: UILabel!
    @IBOutlet weak var carRentPrice: UILabel!
    @IBOutlet weak var engineSize: UILabel!
    @IBOutlet weak var carImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()


        backgroundColor = .clear
        contentView.layer.cornerRadius = 30
        carRentPrice.textColor = .blue
        contentView.backgroundColor = .white
        carName.numberOfLines = 1
        carName.lineBreakMode = .byClipping

    }

}
