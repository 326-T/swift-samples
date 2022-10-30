//
//  SoundPlayer.swift
//  music
//
//  Created by 竹田 恭 on 2022/10/30.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {

    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    var player: AVAudioPlayer!
    
    func cymbalPlay() throws {
        player = try AVAudioPlayer(data: cymbalData)
        
        player.play()
    }
    
    func guitarPlay() throws {
        player = try AVAudioPlayer(data: guitarData)
        
        player.play()
    }
}
