//
//  ViewController.swift
//  CustomButton
//
//  Created by Shivaditya Kumar on 2022-11-25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customButton: AppButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }
    private func setButton() {
        self.customButton.color = .orange.withAlphaComponent(0.7)
        self.customButton.addIcon(icon: UIImage(named: "messageIcon")!, color: .black)
        self.customButton.title = "App Button"
        self.customButton.layer.cornerRadius = 5
        self.customButton.font = .systemFont(ofSize: 16, weight: .medium)
        self.customButton.titleColor = .black
    }

}

