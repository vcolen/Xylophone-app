//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
        animate(sender)
    }
    
    func playSound(_ soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    func animate(_ button: UIButton) {
        UIView.animate(withDuration: 0.2) {
                print("Start")
                button.alpha = 0.5
            }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            UIView.animate(withDuration: 0.2) {
                    button.alpha = 1.0
                    print("End")
                }
            }
    }
}
