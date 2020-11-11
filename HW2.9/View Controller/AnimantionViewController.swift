//
//  AnimantionViewController.swift
//  HW2.9
//
//  Created by Dmitry Shcherbakov on 10.11.2020.
//

import UIKit
import Spring

class AnimantionViewController: UIViewController {

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var springView: SpringView!
    
    private var currentAnimation = Animation.getAnimation()
    private var nextAnimation = Animation.getAnimation()

    @IBAction func pressedRunButton(_ sender: UIButton) {
        currentAnimation = nextAnimation
        
        updateAnimationLabels()
        updateAnimationForSpringView()
        
        nextAnimation = Animation.getAnimation()
        
        runButton.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
    
    private func updateAnimationLabels() {
        presetLabel.text = "preset: \(currentAnimation.preset)"
        curveLabel.text = "curve: \(currentAnimation.curve)"
        forceLabel.text = "force: \(currentAnimation.force)"
        durationLabel.text = "duration: \(currentAnimation.duration)"
        delayLabel.text = "delay: \(currentAnimation.delay)"
    }
    
    private func updateAnimationForSpringView() {
        springView.animation = currentAnimation.preset
        springView.curve = currentAnimation.curve
        springView.force = currentAnimation.force
        springView.duration = currentAnimation.duration
        springView.delay = currentAnimation.delay
        
        springView.animate()
    }
    
}
