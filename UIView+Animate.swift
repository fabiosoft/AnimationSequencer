//
//  UIView+Animate.swift
//  AnimationSequencer
//
//  Created by Fabio Nisci on 10/03/2020.
//

import UIKit

public extension UIView {
    
    func animate(_ animations:ASSequence...) {
        self.animate(animations)
    }
    
    func animate(_ animations: [ASSequence], _ completion: (() -> Void)? = nil) {
        guard !animations.isEmpty else { //faster than count
            completion?()
            return
        }
        
        var animations = animations
        let animation = animations.removeFirst()
        
        UIView.animate(withDuration: animation.duration, delay: animation.delay, options: animation.options, animations: {
            animation.animation(self)
        }, completion: { _ in
            self.animate(animations, completion)
        })
    }
    
    func animateTogether(_ animations: [ASSequence], _ completion: (() -> Void)? = nil) {
        
        guard !animations.isEmpty else { //faster than count
            completion?()
            return;
        }
        
        let animationCompletionGroup = DispatchGroup()
        animationCompletionGroup.notify(queue: DispatchQueue.main) {
            completion?() //all animations are over
        }

        for animation in animations {
            animationCompletionGroup.enter()
            UIView.animate(withDuration: animation.duration, animations: {
                animation.animation(self)
            }, completion: { _ in
                animationCompletionGroup.leave()
            })
        }
    }
}
