//
//  SomeData.swift
//  Sound It!
//
//  Created by Sam Blackburn on 06/12/2018.
//  Copyright © 2018 Sam Blackburn. All rights reserved.
//

import Foundation

final class SomeData {

    static func generateAnimalNoiseData() -> [Noises] { // retrieves variables from class Chocolate
        return [ // adds data to the table
            Noises(noiseImg:"🐶", sound:"dog"),
            Noises(noiseImg:"🐱", sound:"cat"),
            Noises(noiseImg:"🐎", sound:"horse"),
            Noises(noiseImg:"🐄", sound:"cow"),
            Noises(noiseImg:"🐵", sound:"monkey"),
            Noises(noiseImg:"🐸", sound:"frogs"),
            Noises(noiseImg:"🦆", sound:"duck")
        ]
    }
    
    static func generateInstrumentsNoiseData() -> [Noises] { // retrieves variables from class Chocolate
        return [ // adds data to the table
            Noises(noiseImg:"🎸", sound:"guitar"),
            Noises(noiseImg:"🎹", sound:"piano"),
            Noises(noiseImg:"🎺", sound:"trumpet"),
            //Noises(noiseImg:"🎷", sound:"cat"),
            //Noises(noiseImg:"🎻", sound:"cat"),
            Noises(noiseImg:"🥁", sound:"drum"),
        ]
    }
    
    static func generateTransportNoiseData() -> [Noises] { // retrieves variables from class Chocolate
        return [ // adds data to the table
            Noises(noiseImg:"🚗", sound:"car"),
            Noises(noiseImg:"🏍", sound:"motorcycle")
        ]
    }
    
    static func generateWeatherNoiseData() -> [Noises] { // retrieves variables from class Chocolate
        return [ // adds data to the table
            Noises(noiseImg:"🌩", sound:"dog"),
            Noises(noiseImg:"💨", sound:"wind"),
            Noises(noiseImg:"⛈", sound:"thunder"),
            Noises(noiseImg:"🌬", sound:"storm")
        ]
    }
}
