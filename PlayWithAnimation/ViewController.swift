//
//  ViewController.swift
//  PlayWithAnimation
//
//  Created by Владислав Вишняков on 25.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var index = 0
    
    @IBOutlet var superViewController: UIView!
    @IBOutlet weak var mainSquare: UIView!
    @IBOutlet weak var labelAnimation: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextAnimation(_ sender: Any) {
        if index < 7 {
        index += 1
            AnimationSwitch.shared.switchAnimation(anim: index,view: mainSquare, superview: superViewController)
            labelAnimation.text = AnimationSwitch.shared.labelText
        }
    }
    @IBAction func prevAnimation(_ sender: Any) {
        if index > 0 {
        index -= 1
            AnimationSwitch.shared.switchAnimation(anim: index,view: mainSquare, superview: superViewController)
            labelAnimation.text = AnimationSwitch.shared.labelText
        }
    }
}

