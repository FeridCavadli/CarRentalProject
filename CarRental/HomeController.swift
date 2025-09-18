//
//  HomeController.swift
//  CarRental
//
//  Created by Ferid on 06.09.25.
//

import UIKit

class HomeController: UIViewController{

    @IBOutlet weak var collection: UICollectionView!

    var car = Car()

    override func viewDidLoad() {
        super.viewDidLoad()

        collection.delegate = self
        collection.dataSource = self
        self.title = "Car Rental"

        self.collection.register(UINib(
            nibName: "CarCell",
            bundle: nil
        ), forCellWithReuseIdentifier: "CarCell")
    }
}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        car.carModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(
            withReuseIdentifier: "CarCell",
            for: indexPath
        ) as! CarCell
        cell.carImage.image = UIImage(
            named: car.carModel[indexPath.row].carImage
        )
        cell.carName.text = car.carModel[indexPath.row].carName
        cell.carRentPrice.text = car.carModel[indexPath.row].carRentPrice
        cell.engineSize.text = car.carModel[indexPath.row].carEngine
        cell.engine.text = "Engine"
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = self.view.frame.width - 50
        return .init(width: size, height: 280)
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collection.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "CarHeaderCollectionReusableView",
            for: indexPath
        ) as! CarHeaderCollectionReusableView
        return header
    }
}
