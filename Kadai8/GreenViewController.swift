//
//  GreenViewController.swift
//  Kadai8
//
//  Created by Hiroatsu on 2021/10/25.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    // swiftlint:disable:next force_cast weak_delegate
    private var appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = appDelegate.sharedValue
        numberLabel.text = String(appDelegate.sharedValue)
    }

    @IBAction private func sliderAction(_ sender: Any) {
        numberLabel.text = String(slider.value)
        appDelegate.sharedValue = slider.value
    }
}
