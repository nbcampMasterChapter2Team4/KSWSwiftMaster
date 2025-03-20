//
//  HybridCar.swift
//  GrammerMaster
//
//  Created by 권순욱 on 3/17/25.
//

import Foundation

class HybridCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .hydrogen) // 엔진 타입 하이브리드로 한정
    }
    
    // 하이브리드 카 클래스 고유 메서드
    func switchEngine(to engine: Engine) {
        self.engine = engine
        print("엔진을 \(engine)으로 전환")
    }
}
