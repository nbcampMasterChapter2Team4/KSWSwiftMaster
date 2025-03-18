//
//  ElectricCar.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .electric)
    }
}
