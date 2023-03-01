//
//  ViewController.swift
//  MarathonFirstTask
//
//  Created by Михаил Герман on 01.03.2023.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var gradientView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewSettings()
    }

    private func viewSettings() {
        gradientView.layer.cornerRadius = 10

        gradientView.layer.shadowColor = UIColor.darkGray.cgColor
        gradientView.layer.shadowOffset = CGSize(width: 3, height: 3)
        gradientView.layer.shadowOpacity = 0.7
        gradientView.layer.shadowRadius = 3
        gradientView.layer.shadowPath = UIBezierPath(rect: gradientView.bounds).cgPath

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemYellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)

        gradientView.layer.insertSublayer(gradientLayer, at: 0)
    }
}


