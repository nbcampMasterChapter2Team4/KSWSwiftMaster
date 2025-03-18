//
//  Car.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

class Car {
    let brand: String
    let model: String
    let year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("Car 주행 중...")
    }
    
    func stop() {
        print("Car 주행 종료...")
    }
    
    func charge() {
        print("Car 충전 중...")
    }
    
    func refuel() {
        print("Car 주유 중...")
    }
}
