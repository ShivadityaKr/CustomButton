//
//  AppButton.swift
//  CustomButton
//
//  Created by Shivaditya Kumar on 2022-11-25.
//

import UIKit

class AppButton: UIButton {
    var iconImageView: UIImageView?
    var label : UILabel?
    var color: UIColor? {
        didSet {
            self.backgroundColor = color
        }
    }
    var titleColor: UIColor? {
        didSet {
            self.setTitleColor(titleColor, for: .normal)
        }
    }
    var isActive = false {
        didSet {
            if isActive {
                self.alpha = 1
                self.isUserInteractionEnabled = true
            } else {
                self.alpha = 0.5
                self.isUserInteractionEnabled = false
            }
        }
    }
    var title: String = "" {
        didSet {
            self.setTitle(title, for: .normal)
        }
    }
    var font: UIFont = .systemFont(ofSize: 16) {
        didSet {
            self.titleLabel?.font = font
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImageView = UIImageView(frame: CGRect(x: 12, y: 12, width: 16, height: 16))
        iconImageView?.contentMode = .center
        self.addSubview(iconImageView!)
        self.layer.removeAllAnimations()
    }
    func addIcon(icon: UIImage, color: UIColor) {
        self.iconImageView?.image = icon
        self.iconImageView?.tintColor = color
    }
}
