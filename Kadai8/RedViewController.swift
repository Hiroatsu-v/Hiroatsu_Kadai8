//
//  RedViewController.swift
//  Kadai8
//
//  Created by Hiroatsu on 2021/10/25.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    var sharedValue: Float {
        get {
            // swiftlint:disable:next force_cast
            (UIApplication.shared.delegate as! AppDelegate).sharedValue
        }
        set {
            // swiftlint:disable:next force_cast
            (UIApplication.shared.delegate as! AppDelegate).sharedValue = newValue
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = sharedValue
        numberLabel.text = String(sharedValue)
    }
    @IBAction private func sliderAction(_ sender: Any) {
        numberLabel.text = String(slider.value)
        sharedValue = slider.value
    }
}
