//
//  CarHeaderCollectionReusableView.swift
//  CarRental
//
//  Created by Ferid on 12.09.25.
//

import UIKit

class CarHeaderCollectionReusableView: UICollectionReusableView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var headerCollection: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        headerCollection.dataSource = self
        headerCollection.delegate = self

        headerCollection.register(UINib(nibName: "HeaderCollectionReusableViewCell", bundle: nil),
                                  forCellWithReuseIdentifier: "HeaderCollectionReusableViewCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = headerCollection.dequeueReusableCell(
            withReuseIdentifier: "HeaderCollectionReusableViewCell",
            for: indexPath
        ) as! HeaderCollectionReusableViewCell
        cell.carSectionImage.image = UIImage(named: "Audi")
//        cell.carSectionImage.backgroundColor = .brown
        cell.infoLabel.text = "Standart"
//        cell.infoLabel.backgroundColor = .yellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width =
        return .init(width: 130, height: 160)
    }
}


