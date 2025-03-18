//
//  HybridCar.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

class HybridCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .hydrogen)
    }
    
    func switchEngine(to engine: Engine) {
        self.engine = engine
        print("엔진을 \(engine)으로 전환")
    }
}
