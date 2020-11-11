//
//  Animation.swift
//  HW2.9
//
//  Created by Dmitry Shcherbakov on 11.11.2020.
//

import Foundation
import UIKit

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimation() -> Animation {
        let force = discardDigitsAfterDecimalPoint(CGFloat.random(in: 1...5))
        let duration = discardDigitsAfterDecimalPoint(CGFloat.random(in: 0.5...5))
        let delay = discardDigitsAfterDecimalPoint(CGFloat.random(in: 0...5))
        
        let dataManager = DataManager.shared
        
        return Animation(
            preset: dataManager.animationPresets.randomElement() ?? "slideLeft",
            curve: dataManager.animationCurves.randomElement() ?? "easeIn",
            force: force,
            duration: duration,
            delay: delay
        )
        
    }
    
    private static func discardDigitsAfterDecimalPoint(_ number: CGFloat) -> CGFloat {
        round(number * 10) / 10
    }
}

