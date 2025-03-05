//
//  myView.swift
//  firstApp
//
//  Created by Toporusan on 05.03.2025.
//

import UIKit

class MyView: UIViewController {
    
    let face = UIView()
    let leftEar = UIView()
    let rightEar = UIView()
    let leftEye = UIView()
    let rightEye = UIView()
    let nose = UIView()
    let mouth = UIView()
    let tongue = UIView()
    let pushMeBTN: UIButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Face
        face.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        face.backgroundColor = .brown
        face.layer.cornerRadius = 150
        face.layer.borderWidth = 3
        face.layer.borderColor = UIColor.black.cgColor
        view.addSubview(face)

        // Left Ear
        leftEar.frame = CGRect(x: 40, y: 140, width: 100, height: 120)
        leftEar.backgroundColor = .darkGray
        leftEar.layer.cornerRadius = 50
        leftEar.layer.borderWidth = 3
        leftEar.layer.borderColor = UIColor.black.cgColor
        view.addSubview(leftEar)

        // Right Ear
        rightEar.frame = CGRect(x: 260, y: 140, width: 100, height: 120)
        rightEar.backgroundColor = .darkGray
        rightEar.layer.cornerRadius = 50
        rightEar.layer.borderWidth = 3
        rightEar.layer.borderColor = UIColor.black.cgColor
        view.addSubview(rightEar)

        // Left Eye
        leftEye.frame = CGRect(x: 100, y: 80, width: 40, height: 40)
        leftEye.backgroundColor = .black
        leftEye.layer.cornerRadius = 20
        face.addSubview(leftEye)

        // Right Eye
        rightEye.frame = CGRect(x: 180, y: 80, width: 40, height: 40)
        rightEye.backgroundColor = .black
        rightEye.layer.cornerRadius = 20
        face.addSubview(rightEye)

        // Nose
        nose.frame = CGRect(x: 130, y: 130, width: 60, height: 40)
        nose.backgroundColor = .black
        nose.layer.cornerRadius = 20
        face.addSubview(nose)

        // Mouth
        mouth.frame = CGRect(x: 100, y: 170, width: 120, height: 30)
        mouth.backgroundColor = .black
        mouth.layer.cornerRadius = 15
        face.addSubview(mouth)

        // Tongue
        tongue.frame = CGRect(x: 140, y: 200, width: 40, height: 80)
        // tongue.backgroundColor = .red
        tongue.layer.cornerRadius = 30
        face.addSubview(tongue)
        
        pushMeBTN.frame = CGRect(x: 100, y: 550, width: 200, height: 50)
        pushMeBTN.setTitle("Нажми меня", for: .normal)
        pushMeBTN.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        pushMeBTN.backgroundColor = .systemBlue
        pushMeBTN.setTitleColor(.white, for: .normal)
        pushMeBTN.layer.cornerRadius = 10
        
        pushMeBTN.addAction(UIAction { _ in
            self.animate()
        }, for: .touchUpInside)

        view.addSubview(pushMeBTN)

    }
    
    
    func animate() {
        UIView.animate(withDuration: 1) {
            self.tongue.frame = CGRect(x: 140, y: 200, width: 40, height: 80)
            self.tongue.backgroundColor = .red
            self.pushMeBTN.backgroundColor = .systemGreen
            
            self.pushMeBTN.setTitle("ХаХаХа!!", for: .normal)
        }
    }
    
}
