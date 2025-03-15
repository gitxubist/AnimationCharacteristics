//
//  SpringAnimationsViewController 2.swift
//  AnimationCharacteristics
//
//  Created by Evgeniy Morozov on 15.03.2025.
//


import UIKit
import SpringAnimation

class SpringAnimationsViewController: UIViewController {
    
    @IBOutlet private weak var animatedView: SpringView!
    @IBOutlet private weak var presetLabel: UILabel!
    
    private let animations = [
        "pop",
        "shake",
        "squeeze",
        "wobble",
        "swing",
        "flipX"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animatedView.layer.cornerRadius = 20
        presetLabel.text = "Spring Animation"
    }

    @IBAction func launchAnimation() {
        animate()
    }
}

// MARK: - Animation
extension SpringAnimationsViewController {
    func animate() {
        let randomIndex = Int.random(in: 0..<animations.count)
        let animationName = animations[randomIndex]
        
        animatedView.animation = animationName
        animatedView.curve = "easeInOut"
        animatedView.force = 1
        animatedView.duration = 1
        animatedView.delay = 0
        
        animatedView.animate()
    }
}
