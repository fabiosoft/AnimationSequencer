//
//  ASAction.swift
//  AnimationSequencer
//
//  Created by Fabio Nisci on 10/03/2020.
//

import UIKit

public class ASSequence: NSObject {
    public let duration: TimeInterval
    public let delay: TimeInterval
    public let animation: (UIView) -> Void
    public let options: UIView.AnimationOptions

    public init(duration: TimeInterval, delay: TimeInterval = 0, options: UIView.AnimationOptions = [], animation: @escaping (UIView) -> Void) {
        self.duration = duration
        self.animation = animation
        self.delay = delay
        self.options = options
    }
}


