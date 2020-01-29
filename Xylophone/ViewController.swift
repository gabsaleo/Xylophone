//
//  ViewController.swift
//  Xylophone
//
//  Created by Gabriella Messias Aleo on 28/01/20.
//  Copyright © 2020 Gabriella Messias Aleo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func sender(_ sender: UIButton) {
        playSound(title: sender.currentTitle!)
    }
    
    func playSound(title:String){
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        
    }
    
}

