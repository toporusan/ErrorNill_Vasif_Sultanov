//
//  EgleViewController.swift
//  lesson4_m2_p10
//
//  Created by Toporusan on 17.03.2025.
//

import UIKit

class EgleViewController: UIViewController {
    
    lazy var girlImg: UIImageView = {
        $0.image = UIImage(imageLiteralResourceName: "55")
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 31.5
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var lastNameLabel: UILabel = {
        $0.text = "Имя Фамилия"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var mainView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .grayProj
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        
        return $0
    }(UIView())
    
    lazy var eagleImg: UIImageView = {
        $0.image = UIImage(imageLiteralResourceName: "89")
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 31.5
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var photoNameLabel: UILabel = {
        $0.text = "Название фото"
        $0.numberOfLines = 0
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 22, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var headerLabel: UILabel = {
        $0.text = "Заголовок"
        $0.numberOfLines = 0
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 22, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var textView: UITextView = {
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.backgroundColor = .clear
        $0.isEditable = false
        $0.isScrollEnabled = false
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextView())
    
    lazy var nextButton: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.setTitle("next", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenProj
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
        
    }(UIButton())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        view.addSubviews(girlImg, lastNameLabel, mainView)
        mainView.addSubviews(eagleImg,headerLabel,textView, nextButton)
        eagleImg.addSubview(photoNameLabel)
        
        NSLayoutConstraint.activate([
            girlImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            girlImg.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            girlImg.widthAnchor.constraint(equalToConstant: 63),
            girlImg.heightAnchor.constraint(equalToConstant: 63),
            
            lastNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 66),
            lastNameLabel.leadingAnchor.constraint(equalTo: girlImg.centerXAnchor, constant: 45),
            lastNameLabel.widthAnchor.constraint(equalToConstant: 120),
            lastNameLabel.heightAnchor.constraint(equalToConstant: 19),
            
            mainView.topAnchor.constraint(equalTo: girlImg.bottomAnchor, constant: 32),
            mainView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            mainView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            mainView.widthAnchor.constraint(equalToConstant: 370),
            
            eagleImg.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            eagleImg.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            eagleImg.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            eagleImg.widthAnchor.constraint(equalToConstant: 330),
            eagleImg.heightAnchor.constraint(equalToConstant: 245),
            
            photoNameLabel.topAnchor.constraint(equalTo: eagleImg.topAnchor, constant: 175),
            photoNameLabel.leadingAnchor.constraint(equalTo: eagleImg.leadingAnchor, constant: 20),

            headerLabel.topAnchor.constraint(equalTo: eagleImg.bottomAnchor, constant: 21),
            headerLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 36),
            
            textView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 5),
            textView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            
            nextButton.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 41),
            nextButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            nextButton.widthAnchor.constraint(equalToConstant: 330),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -40),
             
        ])
        
        
    }
    
}


extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
