//
//  CarModel.swift
//  CarRental
//
//  Created by Ferid on 11.09.25.
//

import Foundation

class Car {

    struct CarGeneral {
        var carSectionImage: String
        var carType: String
        var carModel: [CarModel]
    }


    struct CarModel {
        var carImage: String
        var carName: String
        var carEngine: String
        var carRentPrice: String
    }

    var carGeneral: [CarGeneral] = [
        .init(carSectionImage: "Ford", carType: "Standart", carModel: [
            .init(
                carImage: "Ford",
                carName: "Ford",
                carEngine: "2.0",
                carRentPrice: "220$"
            ),
            .init(
                carImage: "Ford",
                carName: "Ford",
                carEngine: "1.5",
                carRentPrice: "150$"
            ),
            .init(
                carImage: "Ford",
                carName: "Ford",
                carEngine: "1.8",
                carRentPrice: "80$"
            )

        ]),
        .init(carSectionImage: "Audi", carType: "Prestige", carModel: [
            .init(
                carImage: "Audi",
                carName: "Audi",
                carEngine: "3.0",
                carRentPrice: "600$"
            ),
            .init(
                carImage: "Audi",
                carName: "Audi",
                carEngine: "2.0",
                carRentPrice: "280$"
            ),
            .init(
                carImage: "Audi",
                carName: "Audi",
                carEngine: "1.5",
                carRentPrice: "140$"
            )
        ]),
        .init(carSectionImage: "Volkswagen", carType: "SUV", carModel: [
            .init(
                carImage: "Volkswagen",
                carName: "Volkswagen",
                carEngine: "2.8",
                carRentPrice: "400$"
            ),
            .init(
                carImage: "Volkswagen",
                carName: "Volkswagen",
                carEngine: "4.5",
                carRentPrice: "200$"
            ),
            .init(
                carImage: "Volkswagen",
                carName: "Volkswagen",
                carEngine: "2.0",
                carRentPrice: "720$"
            )
        ])
    ]
    var carModel: [CarModel] = [.init(
        carImage: "Ford",
        carName: "Ford",
        carEngine: "1.5",
        carRentPrice: "150$"
    ),.init(
        carImage: "Audi",
        carName: "Audi",
        carEngine: "2.0",
        carRentPrice: "280$"
    ),.init(
        carImage: "Volkswagen",
        carName: "Volkswagen",
        carEngine: "2.8",
        carRentPrice: "400$"
    )
    ]
}
