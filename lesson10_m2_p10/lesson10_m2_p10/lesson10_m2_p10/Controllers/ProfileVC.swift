//
//  ProfileVC.swift
//  lesson10_m2_p10
//
//  Created by Toporusan on 08.04.2025.
//

import UIKit

class ProfileVC: UIViewController {

    var delegate: TabViewDelegate?
    var setTitleDelegate: HomeVCDelegate?

    private lazy var textField: UITextField = {
        let space = UIView()
        space.frame = CGRect(x: 0, y: 0, width: 16, height: 0)
        $0.leftView = space
        $0.leftViewMode = .always
        $0.rightView = space
        $0.rightViewMode = .always
        $0.frame = CGRect(x: view.frame.minX + 34, y: view.frame.minY + 325, width: view.frame.width - 68, height: 60)
        $0.backgroundColor = .grayProj
        $0.placeholder = "Имя пользователя"
        return $0
    }(UITextField())

    private lazy var button: UIButton = {
        $0.frame = CGRect(x: view.frame.minX + 34, y: textField.frame.maxY + 28, width: textField.frame.width, height: textField.frame.height)
        $0.backgroundColor = .black
        $0.setTitle("Сохранить", for: .normal)
        $0.tintColor = .white
        return $0
    }(UIButton(primaryAction: action))

    lazy var action: UIAction = UIAction { _ in
        let name = self.textField.text ?? ""
        self.setTitleDelegate?.setTabTitle(title:name)
        self.navigationController?.popViewController(animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(textField)
    }
}
