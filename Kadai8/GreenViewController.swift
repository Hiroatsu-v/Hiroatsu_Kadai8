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
    private weak var delegate = UIApplication.shared.delegate as? AppDelegate

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let slidervalue = delegate?.sharedSliderValue else { return }
        slider.value = slidervalue
        numberLabel.text = String(delegate!.sharedSliderValue)
    }

    @IBAction private func sliderAction(_ sender: Any) {
        let sliderValue = slider.value
        numberLabel.text = String(sliderValue)
        delegate!.sharedSliderValue = sliderValue
    }
}
