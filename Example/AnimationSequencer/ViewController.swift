//
//  ViewController.swift
//  AnimationSequencer
//
//  Created by fabiosoft on 03/10/2020.
//  Copyright (c) 2020 fabiosoft. All rights reserved.
//

import UIKit
import AnimationSequencer

class ViewController: UIViewController {
    
    var square: UIView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        square = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        square.backgroundColor = .systemBlue
        square.center = self.view.center
        
        self.view.addSubview(square)
        
//        NESTED CODE
//        UIView.animate(withDuration: 1.0, delay: 2.0, animations: {
//
//            square.center.x += 100
//            square.center.y += 100
//
//        }) { (finished) in
//            UIView.animate(withDuration: 0.3, animations: {
//
//                square.center.x = self.view.center.x
//                square.center.y = self.view.center.y
//
//            }) { (finished) in
//                UIView.animate(withDuration: 0.3, animations: {
//
//                    square.alpha = 0
//
//                }) { (finished) in
//
//                }
//            }
//        }
        
    }
    
    @IBAction func animate(_ sender: Any) {
        square.animate([
            ASSequence.move(byX: 100, y: 100, duration: 1.0),
            ASSequence.move(centerToX: self.view.center.x, y: self.view.center.y).delayedFor(1.0),
            ASSequence.fadeOut()
        ], {
            //auto reset at completion
            //self.reset(nil)
        })
//        square.alpha = 0
//        square.animateTogether([
//            ASAction.fadeIn(duration: 3.0),
//            ASAction.move(byX: 100, y: 100, duration: 1.0).delayedFor(2.0),
//            ASAction.move(centerToX: self.view.center.x, y: self.view.center.y)
//        ])
    }
    
    @IBAction func reset(_ sender: Any?) {
        square.animate(
            ASSequence.fadeIn().delayedFor(1.0),
            ASSequence.move(centerToX: self.view.center.x, y: self.view.center.y)
        )
    }
}

