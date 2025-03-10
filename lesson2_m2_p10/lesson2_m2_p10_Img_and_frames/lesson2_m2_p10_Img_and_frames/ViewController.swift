//
//  ViewController.swift
//  lesson2_m2_p10_Img_and_frames
//
//  Created by Toporusan on 10.03.2025.
//

import UIKit

class ViewController: UIViewController {
    lazy var frameWidth = Int(view.frame.width)
    lazy var frameLeftPadding = 30

    lazy var img1: UIImageView = imageViewCreater(x: frameLeftPadding, y: Int(mountainBackGround.frame.maxY) + 33, width: 100, height: 100, imageName: .indianCouple, cornerRadius: 50)
    lazy var lable1 = textViewCreater(x: Int(img1.frame.maxX) + 16, y: Int(mountainBackGround.frame.maxY) + 52,
                                width: Int(view.frame.width) - Int(img1.frame.maxX) - frameLeftPadding, height: 25, color: .black, text: "Имя Фамилия", fontWeight: .bold)
    lazy var  button1 = buttonCreater(x: Int(img1.frame.maxX) + 16, y: Int(lable1.frame.maxY) + 9, width: 170, height: 45, text: "редактировать", cornerRadius: 10)
    lazy var  lable2 = textViewCreater(x: frameLeftPadding, y: Int(img1.frame.maxY) + 52,
                                width: Int(view.frame.width), height: 25,color: .black, text: "Добавить описание", fontWeight: .regular)
    lazy var  lable3 = textViewCreater(x: frameLeftPadding, y: Int(textView1.frame.maxY) + 33,
                                width: Int(view.frame.width), height: 25,color: .black, text: "Изменить пароль", fontWeight: .regular)
    
    lazy var textField1 = textFieldCreater(x: frameLeftPadding, y: Int(lable3.frame.maxY + 9), width: Int(view.frame.width) - (frameLeftPadding * 2), height: 52, placeholder: "Старый пароль")
    lazy var textField2 = textFieldCreater(x: frameLeftPadding, y: Int(textField1.frame.maxY + 9), width: Int(view.frame.width) - (frameLeftPadding * 2), height: 52, placeholder: "Новый пароль")
    lazy var  button2 = buttonCreater(x: frameLeftPadding, y: Int(view.frame.maxY) - 90, width: Int(view.frame.width) - (frameLeftPadding * 2), height: 50, text: "Сохранить", fontSize: 16, cornerRadius: 10)
    
    
    
    lazy var mountainBackGround: UIImageView = {
        let imageView = UIImageView(image: .mountain)
        imageView.contentMode = .scaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 156)
        return imageView
    }()
    
    lazy var textView1: UITextView = {
        $0.backgroundColor = .greyProj
        $0.frame.origin = CGPoint(x: frameLeftPadding, y: Int(lable2.frame.maxY) + 10)
        $0.frame.size = CGSize(width: Int(view.frame.width) - (frameLeftPadding * 2), height: 150)
        $0.layer.cornerRadius = 10
        $0.font = .systemFont(ofSize: 16)
        return $0
    }(UITextView())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(mountainBackGround, img1, lable1, button1, lable2, textView1, lable3, textField1, textField2, button2)

    }

    // Создание лейбла
    func textViewCreater(x: Int, y: Int,
                         width: Int, height: Int,
                         color: UIColor,
                         text: String = "text",
                         fontWeight: UIFont.Weight = .regular,
                         fontSize: Int = 16) -> UITextView {
        let textView: UITextView = UITextView()
        textView.frame = CGRect(x: x, y: y, width: width, height: height)
        textView.textColor = color
        textView.text = text
        textView.font = UIFont.systemFont(ofSize: CGFloat(fontSize), weight: fontWeight)

        return textView
    }

    // Создание кнопки

    func buttonCreater(x: Int, y: Int,
                       width: Int, height: Int,
                       text: String = "",
                       textColor: UIColor = .white,
                       backgroundColor: UIColor = .blueProj,
                       fontSize: CGFloat = 18,
                       fontWeight: UIFont.Weight = .regular,
                       cornerRadius: CGFloat = 0,
                       borderWidth: CGFloat = 0,
                       borderColor: UIColor = .clear) -> UIButton {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.setTitle(text, for: .normal)
        button.setTitleColor(textColor, for: .normal)

        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor

        return button
    }

    // Создание UITextField
    func textFieldCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          placeholder: String = "",
                          cornerRadius: Int = 10,
                          isPassword: Bool = false,
                          offsetLeft: Int = 10) -> UITextField {
        let textField = UITextField()

        textField.frame = CGRect(x: x, y: y, width: width, height: height)
        textField.backgroundColor = .greyProj
        textField.placeholder = placeholder
        textField.layer.cornerRadius = CGFloat(cornerRadius)
        textField.isSecureTextEntry = isPassword
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: offsetLeft, height: 0))
        textField.rightViewMode = .always
        return textField
    }

    // Создание UIImageView
    func imageViewCreater(x: Int, y: Int,
                          width: Int, height: Int,
                          imageName: UIImage,
                          contentMode: UIView.ContentMode = .scaleAspectFit,
                          cornerRadius: Int = 0) -> UIImageView {
        let imageView = UIImageView()

        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.backgroundColor = .greyProj
        imageView.image = imageName
        imageView.contentMode = contentMode
        imageView.layer.cornerRadius = CGFloat(cornerRadius)
        imageView.clipsToBounds = true

        return imageView
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
