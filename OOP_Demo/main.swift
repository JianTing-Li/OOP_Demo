//
//  main.swift
//  OOP_Demo
//
//  Created by Jian Ting Li on 11/13/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import Foundation


let piano = Piano(brand: "Yamaha", hasPedals: true)
print(piano.tune()) // Piano standard tuning for Yamaha.

let music = Music(notes: ["C", "G", "F"])
//print(piano.play(music, usingPedals: false)) // Play piano notes C G F without pedals.
print(piano.play(music))    // Play piano notes C G F with pedals.

print(Piano.whiteKeys)
print(Piano.blackKeys)

let acousticGuitar = AcousticGuitar(brand: "Roland", stringGauge: "light")
print(acousticGuitar.tune())    // Tune Roland acousitc with E A D G B E
print(acousticGuitar.play(music))   // Play folk tune on frets: C G F.


// Show reference semantics in action by instantiating an amplifier and sharing it between a Gibson electric guitar and a Fender bass guitar.
let amplifier = Amplifier()
let electricGuitar = ElectricGuitar(brand: "Gibson", stringGauge: "medium", amplifier: amplifier)
print(electricGuitar.tune())    //Tune Gibson electric with E A D G B E
// this also set amplifier volume to 5

let bassGuitar = BassGuitar(brand: "Fender", stringGauge: "heavy", amplifier: amplifier)
print(bassGuitar.tune())    //Tune Fender bass with E A D G B E

print(electricGuitar.amplifier.volume)  //  5
print(bassGuitar.amplifier.volume)  //  5

amplifier.unplug()

print(electricGuitar.amplifier.volume)  //  0
print(bassGuitar.amplifier.volume)  // 0

// they are different types but it works because all of them share the same parent class. They perform according to its class type.
let instruments = [piano, acousticGuitar, electricGuitar, bassGuitar]
let band = Band(instruments: instruments)
band.perform(music)
