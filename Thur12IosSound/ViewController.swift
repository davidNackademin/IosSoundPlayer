//
//  ViewController.swift
//  Thur12IosSound
//
//  Created by David Svensson on 2018-04-12.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let soundPlayer = SoundPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playSound(_ sender: UIButton) {
        soundPlayer.play(index: sender.tag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

