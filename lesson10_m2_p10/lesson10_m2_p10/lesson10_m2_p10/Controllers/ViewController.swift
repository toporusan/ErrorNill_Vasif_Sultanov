//
//  ViewController.swift
//  lesson10_m2_p10
//
//  Created by Toporusan on 07.04.2025.
//

import UIKit

//4 Класс который будет Выполлять делегируемую функцию ДОЛЖЕН ПРИНЯТЬ ДЕЛЕГАТ!!!

class ViewController: UIViewController {
    
    var delegate: TabViewDelegate?
    
    private lazy var button: UIButton = {
        $0.frame.size = CGSize(width: 70, height: 70)
        $0.layer.cornerRadius = 30
        $0.backgroundColor = .black
        $0.setTitle("Tap", for: .normal)
        $0.setImage(UIImage(systemName: "plus"), for: .normal)
        $0.tintColor = .white
        $0.frame.origin = CGPoint(x: view.frame.width - 100, y: view.frame.height - 200)
        return $0
    }(UIButton(primaryAction: action))

    
    lazy var action: UIAction = UIAction { _ in
        self.delegate?.setTabIndex(index: 2)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "FirstVC"
        view.addSubview(button)
    }
    
}
