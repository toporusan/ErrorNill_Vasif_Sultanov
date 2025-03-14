//
//  ViewController.swift
//  lesson3_m2_p10_Img_and_frames
//
//  Created by Toporusan on 13.03.2025.
//

import UIKit

class ViewController: UIViewController {
    lazy var search = UISearchController()

    lazy var mainLogoImg: UIImageView = imageViewCreater(x: 20, y: Int(view.frame.minY) + 65, width: 91, height: 35, imageName: .group1000004694)
    lazy var serviseResheniyTxt: UITextView = textViewCreater(x: 20, y: Int(mainLogoImg.frame.maxY) + 20, width: 342, height: 64, color: .white, text: "Сервис квартирных решений от сделки до отделки", backgroundColor: .clear, fontSize: 23)

    lazy var buyView: UIView = {
        $0.frame.origin = CGPoint(x: 14, y: serviseResheniyTxt.frame.maxY + 22)
        $0.frame.size = CGSize(width: 380, height: 135)
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())

    lazy var buyTxt: UITextView = textViewCreater(x: Int(buyView.frame.minX) + 14, y: Int(buyView.frame.minY) + 14, width: 65, height: 25, color: .black, text: "Купить", fontWeight: .bold, backgroundColor: .clear, fontSize: 15)
    lazy var objectTxt: UITextView = textViewCreater(x: Int(buyView.frame.minX) + 14, y: Int(buyTxt.frame.maxY), width: 225, height: 42, color: .brounProj, text: "Подберем подходящий объект", fontWeight: .regular, backgroundColor: .clear, fontSize: 15)

    lazy var arrowBtn: UIButton = buttonCreater(x: Int(buyView.frame.minX) + 358, y: Int(buyView.frame.minY) + 20, width: 5, height: 10, backgroundColor: .clear, image: .vector10)

    lazy var lifeComplexImg: UIImageView = UIImageView(image: #imageLiteral(resourceName: "Frame 26720"))

    @objc func handleArrowBtn() {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.backButtonTitle = "Назад"
        arrowBtn.addTarget(self, action: #selector(handleArrowBtn), for: .touchUpInside)

        lifeComplexImg.frame = CGRect(x: 8, y: Int(buyView.frame.maxY) + 20, width: Int(view.frame.width) - 10, height: 500)

        view.addSubviews(mainLogoImg, serviseResheniyTxt, buyView, buyTxt, objectTxt, arrowBtn, lifeComplexImg)
    }

    func textFieldCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          placeholder: String = "",
                          cornerRadius: Int = 10,
                          backgroundColor: UIColor? = .clear,
                          isPassword: Bool = false,
                          offsetLeft: Int = 10) -> UITextField {
        let textField = UITextField()

        textField.frame = CGRect(x: x, y: y, width: width, height: height)
        textField.backgroundColor = backgroundColor
        textField.placeholder = placeholder
        textField.layer.cornerRadius = CGFloat(cornerRadius)
        textField.isSecureTextEntry = isPassword
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.rightViewMode = .always
        return textField
    }

    func buttonCreater(x: Int, y: Int,
                       width: Int, height: Int,
                       text: String = "",
                       textColor: UIColor = .white,
                       backgroundColor: UIColor? = .clear,
                       fontSize: CGFloat = 18,
                       image: UIImage? = nil,
                       fontWeight: UIFont.Weight = .regular,
                       cornerRadius: CGFloat = 0,
                       borderWidth: CGFloat = 0,
                       borderColor: UIColor? = .clear) -> UIButton {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.setTitle(text, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.setImage(image, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor?.cgColor

        return button
    }

    func imageViewCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          imageName: UIImage,
                          backgroundColor: UIColor? = .clear,
                          contentMode: UIView.ContentMode = .scaleAspectFit,
                          cornerRadius: Int = 0) -> UIImageView {
        let imageView = UIImageView()

        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.backgroundColor = backgroundColor
        imageView.image = imageName
        imageView.contentMode = contentMode
        imageView.layer.cornerRadius = CGFloat(cornerRadius)
        imageView.clipsToBounds = true

        return imageView
    }

    func textViewCreater(x: Int, y: Int,
                         width: Int, height: Int,
                         color: UIColor,
                         text: String = "text",
                         fontWeight: UIFont.Weight = .regular,
                         backgroundColor: UIColor? = .clear,
                         fontSize: Int = 16) -> UITextView {
        let textView: UITextView = UITextView()
        textView.frame = CGRect(x: x, y: y, width: width, height: height)
        textView.textColor = color
        textView.backgroundColor = backgroundColor
        textView.text = text
        textView.font = UIFont.systemFont(ofSize: CGFloat(fontSize), weight: fontWeight)

        return textView
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
