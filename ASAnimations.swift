//
//  ASAnimations.swift
//  AnimationSequencer
//
//  Created by Fabio Nisci on 10/03/2020.
//

import UIKit

public extension ASSequence {
    
    static func fadeTo(_ value:CGFloat, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) { $0.alpha = value }
    }
    
    static func fadeIn(duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) { $0.alpha = 1 }
    }

    static func fadeOut(duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) { $0.alpha = 0 }
    }

    static func resize(boundsTo size: CGSize, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) { $0.bounds.size = size }
    }
    
    static func resize(frameTo size: CGSize, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) { $0.frame.size = size }
    }

    static func move(byX x: CGFloat, y: CGFloat, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) {
            $0.center.x += x
            $0.center.y += y
        }
    }
    
    static func move(toX x: CGFloat, y: CGFloat, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) {
            $0.frame.origin.x = x
            $0.frame.origin.y = y
        }
    }
    
    static func move(centerToX x: CGFloat, y: CGFloat, duration: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: duration) {
            $0.center.x = x
            $0.center.y = y
        }
    }
    
    func delayedFor(_ delay: TimeInterval = 0.3) -> ASSequence {
        return ASSequence(duration: self.duration, delay: delay, animation: self.animation)
    }
}
