//
//  ViewController.swift
//  PlayWithAnimation
//
//  Created by Владислав Вишняков on 25.06.2021.
//


/*
 Для всех задач сделайте один проект с одним экраном, где будут кнопки «предыдущая» и «следующая» внизу экрана, а между ними — номер текущей анимации. Сделайте так, чтобы этими кнопками можно было выбрать нужную анимацию. Номер анимации — это номер задачи из списка ниже. Все анимации должны применяться к красному квадрату наверху экрана, суммарно длиться две секунды (кроме последней) и после завершения возвращать квадрат в состояние, в котором он был до анимации.
 Итак, сделайте следующие анимации:
1 Изменение цвета фона квадрата на жёлтый.
2 Перемещение в правый верхний угол экрана.
3 Закругление краёв, чтобы квадрат выглядел как круг.
4 Поворот на 180 градусов.
5 «Исчезание».
6 Сначала увеличение в два раза, потом анимированное уменьшение обратно.
7 Бесконечную анимацию поворота.
 */

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

