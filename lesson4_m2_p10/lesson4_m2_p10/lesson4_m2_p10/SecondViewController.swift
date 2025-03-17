//
//  SecondViewController.swift
//  lesson4_m2_p10
//
//  Created by Toporusan on 17.03.2025.
//

import UIKit

class SecondViewController: UIViewController {

    
    lazy var nextButton: UIButton = {
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.setTitle("back", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenProj
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addAction(redirectToAnotherViewController, for: .primaryActionTriggered)
        return $0
        
    }(UIButton())
    
    
    lazy var redirectToAnotherViewController  = UIAction{ _ in
        self.navigationController?.popViewController(animated: true)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .grayProj
        
        
        view.addSubviews2(nextButton)

        NSLayoutConstraint.activate([
         
            nextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nextButton.widthAnchor.constraint(equalToConstant: 330),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
             
        ])
        
        
    }
    
}


extension UIView {
    func addSubviews2(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

