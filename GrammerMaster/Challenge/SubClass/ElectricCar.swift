//
//  ElectricCar.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .electric) // 엔진 타입 electric으로 한정
    }
    
    // 기존 메서드 재정의
    override func refuel() {
        print("전기차에서는 사용하지 않는 명령어입니다.")
    }
}
