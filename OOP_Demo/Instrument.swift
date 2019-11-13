//
//  Instrument.swift
//  OOP_Demo
//
//  Created by Jian Ting Li on 11/13/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import Foundation

// parent class
class Instrument {
    let brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func tune() -> String {
        fatalError("Implement this method for \(brand)")
    }
    
    func play(_ music: Music) -> String {
        return music.prepared()
    }
    
    func perform(_ music: Music) {
        print(tune())
        print(play(music))
    }
}
