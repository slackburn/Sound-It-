//
//  AnimalNoisesCell.swift
//  Sound It!
//
//  Created by Sam Blackburn on 06/12/2018.
//  Copyright © 2018 Sam Blackburn. All rights reserved.
//

import UIKit
import AVFoundation

class AnimalNoisesCell: UITableViewCell {
    
    @IBAction func stopMusic(_ sender: UIBarButtonItem) {
        stopSound()
    }
    
    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var animalEmojiLbl: UILabel!
    
    @IBAction func playButton(_ sender: UIButton) {
        
        //var getSound = noise?.sound ?? ""
        guard let sound = noise?.sound else { return }
        //getSound += ".wav"
        print(sound)
        playSound(soundFileName: sound)
        //playSound(soundFileName: getSound)
    }
    
    var noise: Noises? {
        didSet {
            guard let noise = noise else { return }
            animalEmojiLbl.text = noise.noiseImg
        }
    }
    
    func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
    func stopSound() {
        audioPlayer.stop()
    }
    
}

struct Noises {
    // Defines variables for adding data to the table
    var noiseImg: String?
    var sound: String?
}


