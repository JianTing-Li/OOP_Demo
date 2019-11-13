//
//  Piano.swift
//  OOP_Demo
//
//  Created by Jian Ting Li on 11/13/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import Foundation

// child class of Instrument
// super takes care of the initializing properities of the parent, Instrument. In this case it's "brand."
class Piano: Instrument {
    let hasPedals: Bool
    static let whiteKeys = 52
    static let blackKeys = 36
    
    init(brand: String, hasPedals: Bool = false) {
        self.hasPedals = hasPedals
        super.init(brand: brand)
    }
    
    override func tune() -> String {
        return "Piano standard tuning for \(brand)."
    }
    
    //super here calls the Instrument parent method in order to get the music’s prepared notes and then play on the piano.
    override func play(_ music: Music) -> String {
        return play(music, usingPedals: hasPedals)
    }
    
    func play (_ music: Music, usingPedals: Bool) -> String {
        let preparedNotes = super.play(music)
        if hasPedals && usingPedals {
            return "Play piano notes \(preparedNotes) with pedals."
        } else {
            return "Play piano notes \(preparedNotes) without pedals."
        }
    }
    
}
