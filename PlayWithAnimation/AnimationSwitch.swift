//
//  AnimationSwitch.swift
//  PlayWithAnimation
//
//  Created by Владислав Вишняков on 28.06.2021.
//

import Foundation
import UIKit

class AnimationSwitch {
    static var shared = AnimationSwitch()
    var labelText = ""
    func switchAnimation(anim: Int, view: UIView, superview: UIView) {
        switch anim {
        case 1:
            labelText = "Изменение цвета фона квадрата на жёлтый."
            UIView.animate(withDuration: 2, delay: 0, options: .autoreverse, animations: {
                view.backgroundColor = .yellow
            }, completion: {_ in
                view.backgroundColor = .red
                
            })
        case 2:
            labelText = "Перемещение в правый верхний угол экрана."
            UIView.animate(withDuration: 2, delay: 0, options: .autoreverse, animations: {
                view.frame = CGRect(x: 155 , y: 44, width: 240, height: 240)
            }, completion: {_ in
                view.center = superview.center
            })
        case 3:
            labelText = "Закругление краёв, чтобы квадрат выглядел как круг"
            UIView.animate(withDuration: 2, delay: 0, options: .autoreverse, animations: {
                view.layer.cornerRadius = CGFloat(view.frame.size.height / 2)
            }, completion: {_ in
                view.layer.cornerRadius = 0
            })
        case 4:
            labelText = "Поворот на 180 градусов."
            UIView.animate(withDuration: 2, animations: {
                view.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: {_ in
                view.transform = .identity
            })
        case 5:
            labelText = "Исчезание"
            UIView.animate(withDuration: 2, delay: 0,options: .autoreverse, animations: {
                view.alpha = 0.0
            }, completion: { _ in
                view.alpha = 1.0
            })
        case 6:
            view.layer.removeAllAnimations()
            labelText = "Увеличение в 2 раза"
            UIView.animate(withDuration: 2, delay: 0, options: .autoreverse, animations: {
                view.transform = CGAffineTransform(scaleX: 2, y: 2)
            }, completion: {_ in
                view.transform = CGAffineTransform(scaleX: 1, y: 1)
                view.transform = .identity
            })
        case 7:
            labelText = "8"
            UIView.animate(withDuration: 0.05, delay: 0, options: .repeat, animations: {
                let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
                rotation.toValue = NSNumber(value: Double.pi * 2)
                rotation.duration = 2
                rotation.isCumulative = true
                rotation.repeatCount = Float.greatestFiniteMagnitude
                view.layer.add(rotation, forKey: "rotationAnimation")
            } , completion: {_ in
                
            })
        default:
            break
        }
    }
}
