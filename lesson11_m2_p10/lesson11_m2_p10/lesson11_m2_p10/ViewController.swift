//
//  ViewController.swift
//  lesson11_m2_p10
//
//  Created by Toporusan on 10.04.2025.
//

import UIKit

class ViewController: UIViewController {
    let imageNames: [String] = ["Rectangle46", "Rectangle47", "Rectangle48"]

    lazy var scrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.isScrollEnabled = true
        $0.showsVerticalScrollIndicator = true
        return $0
    }(UIScrollView(frame: view.frame))

    lazy var stackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 17
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())

    lazy var mainImageView: ImageViewCustomUI = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(ImageViewCustomUI(image: "Rectangle45"))
    
    lazy var bottomImageView: ImageViewCustomUI = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(ImageViewCustomUI(image: "Rectangle1"))
    
    lazy var text : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        $0.textAlignment = .left
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
        scrollView.addSubview(mainImageView)
        scrollView.addSubview(stackView)
        addImageToStackView(array: imageNames)
        scrollView.addSubview(text)
        scrollView.addSubview(bottomImageView)
        setupConstraints()
    }

    func addImageToStackView(array: [String]) {
        for i in 0 ... array.count - 1 {
            let imageView = ImageViewCustomUI(image: imageNames[i])
            stackView.addArrangedSubview(imageView)
        }
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            mainImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 34),
            mainImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30),
            mainImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -30),
            mainImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -60),
            mainImageView.heightAnchor.constraint(equalToConstant: 202),

            stackView.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 32),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -30),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -60),
            stackView.heightAnchor.constraint(equalToConstant: 100),
        
            text.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 37),
            text.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30),
            text.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -30),
            text.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -60),
            
            bottomImageView.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 30),
            bottomImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30),
            bottomImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -30),
            bottomImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -60),
            bottomImageView.heightAnchor.constraint(equalToConstant: 202),
            bottomImageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20),
            

        ])
    }
}
