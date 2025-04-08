//
//  SecondVC.swift
//  lesson10_m2_p10
//
//  Created by Toporusan on 07.04.2025.
//

import UIKit


protocol HomeVCDelegate: AnyObject {
    func setTabTitle(title: String)
}

class HomeVC: UIViewController, HomeVCDelegate {

    var delegate: TabViewDelegate?
    
    
    lazy var textField: UILabel = {
        $0.frame.size = CGSize(width: view.frame.width - 10, height: 74)
        $0.frame.origin = CGPoint(x: view.frame.minX + 34, y: view.frame.minY + 89)
        $0.font = .systemFont(ofSize: 62, weight: .bold)
        $0.text = "Имя"
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var button: UIButton = {
        $0.frame.size = CGSize(width: view.frame.width - 68, height: 60)
        $0.backgroundColor = .black
        $0.setTitle("Настройки", for: .normal)
        $0.tintColor = .white
        $0.frame.origin = CGPoint(x: view.frame.minX + 34, y: view.frame.maxY - 170)
        return $0
    }(UIButton(primaryAction: action))

    
    lazy var action: UIAction = UIAction { _ in
        let profileVC = ProfileVC()
        profileVC.setTitleDelegate = self
        self.navigationController?.pushViewController(profileVC, animated: true)
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.addSubview(textField)
    }
    
    
    func setTabTitle(title: String){
        textField.text = title
    }
    
    
}
