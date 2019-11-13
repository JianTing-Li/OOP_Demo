//
//  AcousticGuitar.swift
//  OOP_Demo
//
//  Created by Jian Ting Li on 11/13/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import Foundation

//class AcousticGuitar: Guitar {
//  static let numberOfStrings = 6
//  static let fretCount = 20
//
//  override func tune() -> String {
//    return "Tune \(brand) acoustic with E A D G B E"
//  }
//
//  override func play(_ music: Music) -> String {
//    let preparedNotes = super.play(music)
//    return "Play folk tune on frets \(preparedNotes)."
//  }
//}

class AcousticGuitar: Guitar {
    static let numberOfStrings = 6
    static let fretCount = 20
    
    override func tune() -> String {
        return "Tune \(brand) acousitc with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play folk tune on frets: \(preparedNotes)."
    }
}
