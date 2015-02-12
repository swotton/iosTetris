//
//  GameViewController.swift
//  TetrisGame
//
//  Created by Work on 12/02/2015.
//  Copyright (c) 2015 Work. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

var scene: GameScene!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
        
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
