//
//  SoundPlayer.swift
//  Thur12IosSound
//
//  Created by David Svensson on 2018-04-12.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import Foundation
import AVFoundation

class SoundPlayer {
    
    private let soundFileNames = ["bell", "crow", "horn1", "horn2"]
    
    private var players : [AVAudioPlayer?]
    

    init() {
        players = soundFileNames.map( { fileName in
            if let url  = Bundle.main.url(forResource: fileName, withExtension: "wav") {
                return try? AVAudioPlayer(contentsOf: url)
            } else {
                return nil
            }
        })
        
//        players = soundFileNames.map( { (fileName : String) -> AVAudioPlayer? in
//            if let url  = Bundle.main.url(forResource: fileName, withExtension: "wav") {
//                return try? AVAudioPlayer(contentsOf: url)
//            } else {
//                return nil
//            }
//        })
        
//        for filename in soundFileNames {
//            if let url  = Bundle.main.url(forResource: filename, withExtension: "wav") {
//                 players.append( try? AVAudioPlayer(contentsOf: url))
//            }
//        }
        
    }
    
    func play(index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index]?.play()
        }
    }
    

}

