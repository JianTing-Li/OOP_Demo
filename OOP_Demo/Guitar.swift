//
//  Guitar.swift
//  OOP_Demo
//
//  Created by Jian Ting Li on 11/13/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import Foundation

// intermediate abstract base class (methods in more than one class type is override
class Guitar: Instrument {
    let stringGauge: String
    init(brand: String, stringGauge: String = "medium") {
        self.stringGauge = stringGauge
        super.init(brand: brand)
    }
}
